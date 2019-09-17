class Tank extends GameObject {

  void display() {
    fill(0, 255, 0);
    super.display();
    fill(255);
  }
}

void keyPressed() {
  if (key == 'w') {
    player.vel.set(0, -1);
  }
  if (key == 's') {
    player.vel.set(0, 1);
  }
  if (key == 'a') {
  // add rotate function 
  }
    if (key == 'a') {
  // add rotate function
  }
}

void keyReleased() {
    player.vel.set(0, 0);
}
