class Tank extends GameObject {

  void display() {
    pushMatrix();
    translate(player.pos.x,player.pos.y);
    rotate(angle);

    rect(0 - 15 ,0 - 15 ,30,30);
    rect(0 -5 ,0 - 30 ,10,30);
    popMatrix();
    fill(0, 255, 0);
    super.display();
    fill(255);
  }
}

void keyPressed() {
  if (key == 'w') {
    player.vel.set(player.vel.x, -1);
  }
  if (key == 's') {
    player.vel.set(0, 1);
  }
  if (key == 'a') {
    angle += 0.1;
  }
    if (key == 'd') {
    angle += -0.1;
   
  }
  PVector vel = new PVector (1,0);
  vel = vel.rotate(angle);
}

void keyReleased() {
    player.vel.set(0, 0);
}
