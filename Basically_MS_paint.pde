PImage eraserIcon;
PImage symmetryIcon;
float oldX;
float oldY;
color black= color(0);
color red = color(255, 36, 3);
color blue = color(255, 243, 3);
color yellow = color(35, 3, 255);
color erase = color(255);
float masterStroke= 1;


void setup()
{
  frameRate(1999999999);
  size(725, 700);
  background(255);
  eraserIcon = loadImage ("eraser.png");
  symmetryIcon = loadImage ("symmetry.png");
  smooth();
}

void draw() {
  if (mousePressed) {
    if (mouseY > 10 && mouseY < 60) {
      if (mouseX >125 && mouseX <200) {
        stroke(black);
      }
      if (mouseX > 425 && mouseX < 500) {
        stroke(red);
      }
      if (mouseX > 225 && mouseX < 300) {
        stroke(blue);
      }
      if (mouseX > 325 && mouseX < 400 ) {
        stroke(yellow);
      }
      if (mouseX > 325 && mouseX < 400 ) {
        stroke(yellow);
      }
      if (mouseX > 25 && mouseX < 100 ) {
        stroke(erase);
      }
      masterStroke=1;
    }
    strokeWeight(masterStroke);
  }
  if (mousePressed) {
    line(mouseX, mouseY, oldX, oldY);
  }
  oldX=mouseX;
  oldY=mouseY;
  Display();

  if (mousePressed)
  {
    if (mouseY > 10 && mouseY < 60 ) {
      if (mouseX > 625 && mouseX < 700) {
        background(255);
        Display();
      }
    }
  }
}

void Display() {
  fill(229, 227, 227);
  rect(-10, -10, 810, 80);
  image(eraserIcon, 25, 10, 75, 50);
  fill(0);
  rect(125, 10, 75, 50);
  fill(255, 243, 3);
  rect(225, 10, 75, 50);
  fill(35, 3, 255);
  rect(325, 10, 75, 50);
  fill(255, 36, 3);
  rect(425, 10, 75, 50);
  image(symmetryIcon, 525, 10, 75, 50);
  fill(255);
  rect(625, 10, 75, 50);
  fill(0);
  textSize(15);
}
