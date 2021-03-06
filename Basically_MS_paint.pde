PImage eraserIcon;
PImage symmetryIcon;
color black= color(0);
color red = color(255, 36, 3);
color blue = color(255, 243, 3);
color yellow = color(35, 3, 255);
color erase = color(255);
float masterStroke=1;
boolean symmetryV = false;
boolean symmetryH = false;
boolean symmetryOff = false;
boolean drop = false;
boolean draw = false;
Drop d = new Drop();

void setup()
{
  frameRate(2147483647);
  size(725, 700);
  background(255);
  eraserIcon = loadImage ("eraser.png");
  symmetryIcon = loadImage ("symmetry.png");
  smooth();
}

void draw() 
{
  strokeWeight(1); 
  if (mousePressed)
  {
    if (mouseY>70 && mouseY <95) 
    {
      if (mouseX >525 && mouseX <600) 
      {
        if (drop==true)
        {
          symmetryV = true;
          symmetryOff=false;
          symmetryH=false;
        }
      }
    }
  }
  if (mouseY>95 && mouseY <120) 
  {
    if (mouseX >525 && mouseX <600) 
    {
      if (drop==true)
      {
        symmetryH = true;
        symmetryOff=false;
        symmetryV=false;
      }
    }
  }

  if (mousePressed)
  {  
    if (mouseY>10 && mouseY <60) 
    {
      if (mouseX >525 && mouseX <600) 
      {
        drop=!drop;
      }
    }

    if (mousePressed) 
    {
      if (mouseY > 10 && mouseY < 60) 
      {
        if (mouseX >125 && mouseX <200) 
        {
          stroke(black);
        }
        if (mouseX > 425 && mouseX < 500) 
        {
          stroke(red);
        }
        if (mouseX > 225 && mouseX < 300) 
        {
          stroke(blue);
        }
        if (mouseX > 325 && mouseX < 400 ) 
        {
          stroke(yellow);
        }
        if (mouseX > 25 && mouseX < 100 ) 
        {
          stroke(erase);
        }
        if (mouseX > 625 && mouseX < 700 ) 
        {
          background(255);
          Display();
        }
      }
    }
    strokeWeight(masterStroke);
    Display();

    if (draw == true) 
    {
      line(pmouseX, pmouseY, mouseX, mouseY);
    }

    if (mousePressed)
    {
      draw=true;
    }

    if (drop == true) 
    {
      d.Update();
    }

    if (symmetryV == true) 
    {
      if (mousePressed)
      {
        strokeWeight(masterStroke);    
        line(pmouseX, pmouseY, mouseX, mouseY);
        line(724-pmouseX, pmouseY, 724-mouseX, mouseY);
      }
    }
    if (symmetryH == true)
    {
      if (mousePressed)
      {
        strokeWeight(masterStroke);
        line(pmouseX, pmouseY, mouseX, mouseY);
        line(pmouseX, 700-pmouseY, mouseX, 700-mouseY);
      }
    }

    if (symmetryOff == true) 
    {
      symmetryH = false;
      symmetryV = false;
    }
  }
}


void Display() 
{ 
  strokeWeight(1);
  fill(255);
  strokeWeight(3);
  fill(229, 227, 227);
  strokeWeight(1);
  rect(-10, 620, 740, 80);
  fill(0);
  textSize(20);
  text("Press s to save into screenshots folder", 125, 640);
  text("Press o to turn off symmetry", 125, 665);
  text("Press 1,2,3 or 4 to change stroke size", 125, 690);
  fill(229, 227, 227);
  rect(-10, -10, 740, 80);
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
  strokeWeight(masterStroke);
}

void mouseReleased() 
{
  draw=false;
}



void keyPressed() 
{
  if (key == 'o') 
  {
    symmetryOff = true;
  }

  if ( key == '1') 
  {
    masterStroke=1;
  }
  if ( key == '2') 
  {
    masterStroke=4;
  }
  if ( key == '3') 
  {
    masterStroke=7;
  }
  if ( key == '4') 
  {
    masterStroke=30;
  }
  if (key == 's') 
  {
    saveFrame("screenshots/rename.png");
  }
}
