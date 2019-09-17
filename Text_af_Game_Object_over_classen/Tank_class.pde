class Tank extends GameObject {

  void display() {
    rect(player.pos.x - 15 ,player.pos.y - 15 ,30,30);
    rect(player.pos.x -5 ,player.pos.y - 30 ,10,30);
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
