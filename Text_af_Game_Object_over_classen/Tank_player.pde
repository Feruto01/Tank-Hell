class TankPlayer extends Tank {

  TankPlayer() {
    r=0;
    g=255;
    b=0;
  }

  void display() {
    if (!isDead)
      super.display();
  }


  void update() {


    super.update();
  }
}
