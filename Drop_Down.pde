class Drop
{
  Drop() {
  }

  void mRect() {
    strokeWeight(1);
    fill(229, 227, 227);
    rect(525, 70, 75, 50);
  }

  void vRect() {
    fill(255);
    rect(525, 70, 75, 25);
    fill(0);
    textSize(10);  
    text("Vertical", 530, 85);
  }

  void hRect() {
    fill(255);
    rect(525, 95, 75, 25);
    fill(0);
    textSize(10);  
    text("Horizontal", 530, 110);
  }

  void Update()
  {

    mRect();
    hRect();
    vRect();
  }
}
