
void keyPressed() {
  PVector vel = new PVector (0, -1);
  vel = vel.rotate(angle);
  if (key == 'w' || key =='W') {
    player.vel.set(vel.x, vel.y);
  }
  if (keyCode == UP) {
    player2.vel.set(vel.x, vel.y);
  }
  if (key == 's' || key == 'S') {
    player.vel.set(-vel.x, -vel.y);
  }
  if (keyCode == DOWN) {
    player2.vel.set(-vel.x, -vel.y);
  }

  if (key == 'a' || key == 'A') {
    angle += -0.1;
  }
  if (key == 'd' || key == 'D') {
    angle += 0.1;
  }
  if (key == 'f' || key == 'F') {
  /*  lifespanSkud  = 500.0;
    fill(255+lifespanSkud);
    stroke (255+lifespanSkud);*/
    Skud s = new Skud();

    s.pos.set(player.pos.x, player.pos.y);
    s.vel.set(1, 1);
    s.vel.rotate(player.angle - 3*PI/4);

    list.add(s);


  }
}
void keyReleased() {
  player.vel.set(0, 0);
}
