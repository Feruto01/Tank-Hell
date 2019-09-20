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


    if (player == player2) {

      stroke(255);
      fill(0, 0, 255);
    }
    super.update();
  }
}
