PImage eraserIcon;
PImage symmetryIcon;
PImage pencil;
float oldX;
float oldY;
color black= color(0);
color red = color(255, 36, 3);
color blue = color(255, 243, 3);
color yellow = color(35, 3, 255);
color erase = color(255);
float masterStroke=1;
int screen = 1;

void setup()
{
  frameRate(2147483647);
  size(725, 700);
  background(255);
  eraserIcon = loadImage ("eraser.png");
  symmetryIcon = loadImage ("symmetry.png");
  pencil= loadImage("pencil.png");
  smooth();
}

void draw() {
  strokeWeight(1);
  line(615, 100, 675, 100);
  strokeWeight(4);
  line(615, 115, 675, 115);
  strokeWeight(7);
  line(615, 130, 675, 130);
  

  if (screen==1) {
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
        if (mouseX > 625 && mouseX < 700 ) {
          background(255);
          Display();
        }
      }
    }
    strokeWeight(masterStroke);

    if (mousePressed)
    {    
      if (mouseX>615 && mouseX<675)
      {    
        if (mouseY==100)
        {
          masterStroke=1;
        }
        if (mouseY==115 )
        {
          masterStroke=4;
        }
        if (mouseY==130)
        {
          masterStroke=7;
        }
      }
    }

    if (mousePressed) {
      line(mouseX, mouseY, oldX, oldY);
    }
    oldX=mouseX;
    oldY=mouseY;
    Display();
  }

  if (screen==2) {
    easterEgg();
  }

  if (mousePressed)
  {
    if (mouseX>675 && mouseX<800)
    {
      if (mouseY>690 && mouseY<800)
      {
        screen=screen +1;
      }
    }
  }
}

void easterEgg() {
  noCursor();
  background(255, 34, 5);
  fill(0);
  textSize(30);
  text("Well, good job finding the easter egg", 100, 400);
  text("Also, you broke my code. Thanks.", 123, 450);
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
  text("Erase All",635,40);
}
