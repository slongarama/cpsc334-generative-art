# CPSC334 Module 1 - Generative Art
Team: Sabrina Long, Xavier Ruiz, Alexi Christakis, Grace Cheung

### Approach
We created a Processing program that maps the pixels on our computer screens to the physical LED display in Becton Cafe. Our program allows the user to draw colored rectangles on their screen, which will also appear on the LED display. When drawing these rectangles, the program highlights the selected area so it's easier to see. The program shows the dimensions and pixel coordinates of each rectangle. In this way, we are facilitating the "discovery" of the screen to physical space mapping.

In addition, users have the option to automatically display the mapping by pressing 'G' on their keyboard. Additional controls include: press 'd' to undo the previous region, 'c' to clear the entire screen, 'p' to write a textfile with the rectangle coordinates and capture the screen with the drawn rectangles. The program can also load in a textfile (the "screenPositions.txt" file in the data folder) that will allow it to generate rectangles based on pre-defined coordinates. (The current file is set to the coordinates of all Becton light panels.)

### Mapping Screen to Physical Space
![Screen layout](https://github.com/slongarama/cpsc334-generative-art/blob/master/screendiagram.png)

In the image above, the lime green 92.0 x 36.0 rectangle on the 8-Panel wall represents **two** LED displays. These displays are directly adjacent to each other and have been represented by a single rectangle for simplicity. 

![Display layout](https://github.com/slongarama/cpsc334-generative-art/blob/master/displaydiagram.png)

### Semi-automated Mapping Discovery

These controls give users flexibility in how they want to discover the Screen to Physical Space mapping.

Controls:
* Click and drag: To create a rectangle, click at the first corner of your desired rectangle, and drag your mouse to create the desired size. Let go of the click to create the rectangle.
* D: Deletes most recently drawn rectangle
* C: Clears all rectangles on the screen
* G: Creates a different colored rectangles that map to all screens in the Becton light display. (NOTE: For correct mapping, make sure your display is set to mirror the Crestron display.)
* P: Creates a textfile called "screen-positions.text" that has the coordinates of all the rectangles. It also creates an image called "screen-layout.png" that is a screenshot of the configuration.




