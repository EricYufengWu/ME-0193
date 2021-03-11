# Scientific Computing
The problem I chose is the inverse kinematics of a 3-DOF leg of a quadruped robot dog, similar to the leg of [the MIT MINI Cheetah](https://youtu.be/G6fMV1UPzkg).

![IK Calculation](https://github.com/EricYufengWu/ME-0193/blob/master/P3/Documentation/IK_calculation.PNG)

### Part 1: Write a python script that works
I first tried solving the math geometrically on my iPad, then came up with a symbolic equation that can no longer be simplified by my brain. I then used a python library named sympy to solve the expression symbolically. By reviewing the multiple answers and comparing them to my skethes and a simplified model in SolidWorks, I selected the most sound solution(s). 
I found sympy extremely slow to perform my calculations (fromm a computer's perspective). A single (x,y,z) point would take 15-40 seconds to solve, and a sweep of coordinates took so long that I started CADing my other projects while waiting it to be solved. I suspect that there might be something wrong with my setup that caused it this slow, but I'll leave it to part 2.

### Part 2: Make it faster
I decided to first use MATLAB to obtain a purely symbolic expression of all the possible solutions to my original equation. Before that, I did try doing the same thing in python using sympy, but the calculation took so long that I thought my Pi had crashed...
But the good news is, I got the symbolic solutions, imported them into my python script, and guess what - now it only takes about 0.0001 seconds to calculate 1 coordinate :)
This feels like a change that is too easily implemented to be counted as a decent part 2... the next step would be to try and convert the calculation into C++/C, which I suspect would make it go even faster. But considering that this assignment is due in less than 10 hours, I might hold off this task until a later time...

### Part 3: Visualization
I finally got the visualiation of 1 leg (forward kinematics) working. It's a bit slow, so future improvements will be targeting that.
![GIF of IK Visualization](https://github.com/EricYufengWu/ME-0193/blob/master/P3/Documentation/sweep.gif)
