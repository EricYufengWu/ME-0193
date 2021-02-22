/**
 * Oscilloscope Puzzle, ME-0193
 */

#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/adc.h"
#include "morse_code.h"

const uint LED_PIN = 25;
uint8_t STATE = 1;
uint8_t LED[100];
uint8_t STEP = 0;
bool FLAG = false;

// Timer call back for reading ADC periodically
bool repeating_timer_callback(struct repeating_timer *t) {
    const float conversion_factor = 3.3f / (1 << 12);
    uint16_t result = adc_read();
    if (result * conversion_factor > 1.9 && result * conversion_factor < 2.1){
        FLAG = true;
    }
    return true;
}

// Function to update the state of led
void update_led(){
    uint32_t time = get_absolute_time() % 1000000;
    gpio_put(LED_PIN, LED[time/10000]);
}

// Outputs the hash when the puzzle is solved
void give_hash(){
    // This is a SHA-256 hash for "EricWuuuuu"
    printf("4f06875f3b4ce5c7b97705cbcae675e47d4a0ff7fc9eb0fa8681980e0fa86363\n");
}

void send_morse_code(uint pin, uint8_t code[5]){
    for (int i = 0; i < 5; i++) {
        switch (code[i]) {
            case 0:{
                gpio_put(pin, 1);
                sleep_us(10);
                gpio_put(pin, 0);
                sleep_us(40);
                break;
            }
            case 1:{
                gpio_put(pin, 1);
                sleep_us(30);
                gpio_put(pin, 0);
                sleep_us(20);
                break;
            }
            case 2:{
                sleep_us(50);
                break;
            }
        }
    }
    sleep_us(50);
}

int main() {
    stdio_init_all();

    // LED Pin for level indication
    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN, GPIO_OUT);

    // Guard condition for level 1: 4 ground pins
    uint8_t hint_1[4] = {4,5,6,8};
    for (int i = 0; i < 4; i++){
        gpio_init(hint_1[i]); 
        gpio_set_dir(hint_1[i], GPIO_IN);
        gpio_pull_up(hint_1[i]);
    }

    // Guard condition for level 2: ADC
    adc_init();
    adc_gpio_init(26);
    adc_select_input(0);
    struct repeating_timer timer;
    add_repeating_timer_ms(500, repeating_timer_callback, NULL, &timer);

    // Guard condition for level 1: sequential grounding
    uint8_t hint_2[4] = {1,0,2,9};
    for (int i = 0; i < 4; i++){
        gpio_init(hint_2[i]); 
        gpio_set_dir(hint_2[i], GPIO_IN);
        gpio_pull_up(hint_2[i]);
    }

    // Output pin for first hint
    gpio_init(22); 
    gpio_set_dir(22, GPIO_OUT);

    // Setup LED for level 1
    for (int i = 0; i < 100; i++){
        LED[i] = 0;
    }
    for (int i = 0; i < 10; i++){
        LED[i] = 1;
    }

    while (1) {
        switch (STATE){
            case 1:{
                // Level 1: Hint on GPIO 22: “GND” (morse code) 4, 5, 6, 8
                send_morse_code(22, G);
                send_morse_code(22, N);
                send_morse_code(22, D);
                send_morse_code(22, FOUR);
                send_morse_code(22, FIVE);
                send_morse_code(22, SIX);
                send_morse_code(22, EIGHT);
                uint count = 0;
                if (gpio_get(hint_1[0]) == 0 && gpio_get(hint_1[1]) == 0 && gpio_get(hint_1[2]) == 0 && gpio_get(hint_1[3]) == 0){
                    STATE = 2;
                    // Set up pin for stage 2
                    for (int i = 0; i < 4; i++){ 
                        gpio_set_dir(hint_1[i], GPIO_OUT);
                    }
                }
                break;
            }
            case 2:{
                // Level 2: Hint in Morse Code on 4, 5, 6, 8 pins: Give A 0 2 V
                send_morse_code(hint_1[0], A);
                send_morse_code(hint_1[1], V);
                send_morse_code(hint_1[2], TWO);
                send_morse_code(hint_1[3], ZERO);
                if (FLAG){
                    STATE = 3;
                    break;
                }
                for (int i = 20; i < 30; i++){
                    LED[i] = 1;
                }
                break;
            }
            case 3:{
                // Level 3: Hint in usb serial output in Simplified Chinese (sequantially ground pin 1, 0, 2, and 9 one by one)
                printf("顺序接地: 一〇二九\n");
                if (gpio_get(hint_2[0]) == 0 && gpio_get(hint_2[1]) == 1 && gpio_get(hint_2[2]) == 1 && gpio_get(hint_2[3]) == 1 && STEP == 0){
                    STEP = 1;
                } else if (gpio_get(hint_2[0]) == 1 && gpio_get(hint_2[1]) == 0 && gpio_get(hint_2[2]) == 1 && gpio_get(hint_2[3]) == 1 && STEP == 1){
                    STEP = 2;
                } else if (gpio_get(hint_2[0]) == 1 && gpio_get(hint_2[1]) == 1 && gpio_get(hint_2[2]) == 0 && gpio_get(hint_2[3]) == 1 && STEP == 2){
                    STEP = 3;
                } else if (gpio_get(hint_2[0]) == 1 && gpio_get(hint_2[1]) == 1 && gpio_get(hint_2[2]) == 1 && gpio_get(hint_2[3]) == 0 && STEP == 3){
                    STATE = 4;
                    printf("Congratulations!! You just solved the puzzle.\n");
                    break;
                } 
                printf("%d", STEP);
                printf("\n");
                for (int i = 40; i < 50; i++){
                    LED[i] = 1;
                }
                break;
            }
            case 4:{
                for (int i = 60; i < 70; i++){
                    LED[i] = 1;
                }
                for (int i = 80; i < 90; i++){
                    LED[i] = 1;
                }
                give_hash();
                break;
            }
        }
        update_led();
        sleep_ms(10);
    }
    return 0;
}