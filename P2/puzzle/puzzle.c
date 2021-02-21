/**
 * Oscilloscope Puzzle, ME-0193
 */

#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/adc.h"
#include "morse_code.h"

const uint LED_PIN = 25;
uint8_t STATE = 2;
uint8_t LED[100];

void update_led(){
    uint32_t time = get_absolute_time() % 1000000;
    gpio_put(LED_PIN, LED[time/10000]);
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

    // LED Pin for stage indication
    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN, GPIO_OUT);

    // Output pin for first hint
    gpio_init(22); 
    gpio_set_dir(22, GPIO_OUT);

    //Set up ADC
    adc_init();
    adc_gpio_init(26);
    adc_select_input(0);

    // Input pin for first hint
    uint8_t hint_1[4] = {4,5,6,8};
    for (int i = 0; i < 4; i++){
        gpio_init(hint_1[i]); 
        gpio_set_dir(hint_1[i], GPIO_IN);
        gpio_pull_up(hint_1[i]);
    }

    // Setup LED for firstgStage
    for (int i = 0; i < 100; i++){
        LED[i] = 0;
    }
    for (int i = 0; i < 10; i++){
        LED[i] = 1;
    }

    while (1) {
        switch (STATE){
            case 1:{
                printf("Now in state one\n");
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
                // printf("Now in state two\n");
                send_morse_code(hint_1[0], A);
                send_morse_code(hint_1[1], ZERO);
                send_morse_code(hint_1[2], TWO);
                send_morse_code(hint_1[3], V);
                // const float conversion_factor = 3.3f / (1 << 12);
                uint16_t result = adc_read();
                printf("%d",adc_read());
                printf("\n");
                // printf("Raw value: 0x%03x, voltage: %f V\n", result, result * conversion_factor);
                for (int i = 20; i < 30; i++){
                    LED[i] = 1;
                }
                break;
            }
            case 3:{
                printf("Now in state three\n");
                for (int i = 40; i < 50; i++){
                    LED[i] = 1;
                }
                break;
            }
            case 4:{
                printf("Now in state four\n");
                for (int i = 60; i < 70; i++){
                    LED[i] = 1;
                }
                break;
            }
        }
        update_led();
        sleep_ms(10);
    }

    return 0;
}


