int gray = 0;

void setup() {
  fullScreen();
  rectMode(CENTER);
  fill(204, 102, 0);
}

//void draw() {
//  background(gray);
//  rect(mouseX, mouseY, 100, 100);
//} 

void draw() {
  background(51);
  stroke(255);
  fill(127);
  rect(mouseX,mouseY,100,50);
}

void mousePressed() {
  gray += 50;
}
