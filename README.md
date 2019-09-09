# CPSC334 Module 1 - Generative Art
Team: Sabrina Long, Xavier Ruiz, Alexi Christakis, Grace Cheung

### Approach
To create a mapping from the pixels on our computer screens to the physical LED display in Becton Cafe, we created a Processing program that allows a user to draw rectangles on each screen in a multi-screen array. When drawing these rectangles the program highlights the selected area so it's easier to see. To undo the previous region, the user can press 'd', and to clear the entire screen the user can press 'c'. Each drawn rectangle has text centered that displays its dimensions, and by pressing 'p' a textfile is written with each rectangles coordinates, and a screencapture saved visualizing the relative positioning of each screen. The program can also load in a textfile.

### Mapping Screen to Physical Space
![Screen layout](https://github.com/slongarama/cpsc334-generative-art/blob/master/map-screen/screen-layout.png)

This image shows...

### Semi-automated Mapping Discovery

Controls:
* P: Prints out coordinates for all rectangles drawn by the user
* D: Deletes most recently drawn rectangle
* G: Maps to all the panels in specifically Becton Cafe
* C: Clears all rectangles on the screen

