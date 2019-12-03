// Press 1 , 2 or 3 to change stroke weight
// Press o to turn off symmetry

PImage eraserIcon;
PImage symmetryIcon;
PImage pencil;
color black= color(0);
color red = color(255, 36, 3);
color blue = color(255, 243, 3);
color yellow = color(35, 3, 255);
color erase = color(255);
float masterStroke=1;
int screen = 1;
boolean symmetryV = false;
boolean symmetryH = false;
boolean symmetryOff = false;
Drop d = new Drop();

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
  if (mousePressed) {
    if (mouseY>10 && mouseY <60) {
      if (mouseX >525 && mouseX <600) {
        d.Update();
      }
    }
  }

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
    if (mousePressed) {
      line(pmouseX, pmouseY, mouseX, mouseY);
    }
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
  if (symmetryV == true) {
    strokeWeight(1);
    line(pmouseX, pmouseY, mouseX, mouseY);
    line(724-pmouseX, pmouseY, 724-mouseX, mouseY);
  }
  if (symmetryH == true) {
    strokeWeight(1);
    line(pmouseX, pmouseY, mouseX, mouseY);
    line(pmouseX, 700-pmouseY, mouseX, 700-mouseY);
  }

  if (symmetryOff == true) {
    symmetryH = false;
    symmetryV = false;
    line(pmouseX, pmouseY, mouseX, mouseY);
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
  text("Erase All", 635, 40);
}

void mouseReleased() {
  if (mouseY>70 && mouseY <95) {
    if (mouseX >525 && mouseX <600) {
      symmetryV = true;
    }
  }
  if (mouseY>95 && mouseY <120) {
    if (mouseX >525 && mouseX <600) {
      symmetryH = true;
    }
  }
}




void keyPressed() {
  if (key == 'o') {
    symmetryOff = true;
  }

  if ( key == '1') {
    masterStroke=1;
  }
  if ( key == '2') {
    masterStroke=4;
  }
  if ( key == '3') {
    masterStroke=7;
  }
}
