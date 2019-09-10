# CPSC334 Module 1 - Generative Art
Team: Sabrina Long, Xavier Ruiz, Alexi Christakis, Grace Cheung

### Approach
To create a mapping from the pixels on our computer screens to the physical LED display in Becton Cafe, we created a Processing program that allows a user to draw rectangles on each screen in a multi-screen array. When drawing these rectangles the program highlights the selected area so it's easier to see. To undo the previous region, the user can press 'd', and to clear the entire screen the user can press 'c'. Each drawn rectangle has text centered that displays its dimensions, and by pressing 'p' a textfile is written with each rectangles coordinates, and a screencapture saved visualizing the relative positioning of each screen. The program can also load in a textfile (the "screenPositions.txt" file in the data folder) that will allow it to generate rectangles based on pre-defined coordinates. (The current file is set to the coordinates of all Becton light panels.)

### Mapping Screen to Physical Space
![Screen layout](https://github.com/slongarama/cpsc334-generative-art/blob/master/screendiagram.png)

In the image above, the lime green 92.0 x 36.0 rectangle on the 8-Panel wall represents **two** LED displays. These displays are directly adjacent to each other and have been represented by a single rectangle for simplicity. 

![Display layout](https://github.com/slongarama/cpsc334-generative-art/blob/master/displaydiagram.png)

### Semi-automated Mapping Discovery

Controls:
* Creating Rectangles: Click once to indicate the first corner of the rectangle, drag your mouse to create your desired shape, and click again to create the rectangle.
* D: Deletes most recently drawn rectangle
* C: Clears all rectangles on the screen
* G: Creates a different colored rectangles that map to all screens in the Becton light display. (NOTE: For correct mapping, make sure your display is set to mirror the Crestron display.)
* P: Creates a textfile called "screen-positions.text" that has the coordinates of all the rectangles. It also creates an image called "screen-layout.png" that is a screenshot of the configuration.




