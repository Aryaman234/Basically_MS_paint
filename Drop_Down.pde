class Drop
{
  int main;
  Drop() {
    main=1;
  }

  void mRect() {
    strokeWeight(1);
    fill(229, 227, 227);
    rect(525, 70, 75, 50);
    strokeWeight(masterStroke);
  }

  void vRect() {
    strokeWeight(1);
    fill(255);
    rect(525, 70, 75, 25);
    fill(0);
    textSize(10);  
    text("Vertical", 530, 85);
     strokeWeight(masterStroke);
  }

  void hRect() {
    strokeWeight(1);
    fill(255);
    rect(525, 95, 75, 25);
    fill(0);
    textSize(10);  
    text("Horizontal", 530, 110);
    strokeWeight(masterStroke);
  }

  void bye()
  {
    fill(255);
    rect(525, 70, 75, 50);
  }

  void Update()
  {

    mRect();
    hRect();
    vRect();
  }
}
