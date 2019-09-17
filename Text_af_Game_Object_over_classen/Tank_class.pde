class Tank extends GameObject {
  
  void display() {
    fill(255, 0, 0);
    super.display();
    fill(255);
  }

}

  void keyPressed() {
  if (key == 'w') {
    player.vel.set(0, 1);
  }
    if (key == 's') {
    player.vel.set(0, -1);
  }
  }
