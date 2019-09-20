void keyPressed() {
  PVector vel = new PVector (0, -3);
  vel = vel.rotate( player.angle );


  if (key == 'w' || key =='W') {
    player.vel.set(vel.x, vel.y);
  }
  if (keyCode == UP) {

  }
  if (key == 's' || key == 'S') {
    player.vel.set(-vel.x, -vel.y);
  }
  if (keyCode == DOWN) {

  }

  if (key == 'a' || key == 'A') {
    player.angle += -0.1;
  }
  if (keyCode == RIGHT) {

  }
  if (key == 'd' || key == 'D') {
    player.angle += 0.1;
  }
  if (keyCode == LEFT) {

  }
  if (key == 'f' || key == 'F') {
    Skud s = new Skud();

    s.pos.set(player.pos.x, player.pos.y);
    s.vel.set(1, 1);
    s.vel.rotate(player.angle - 3*PI/4);
    PVector p = new PVector(50, 0);
    p.rotate(player.angle - 2*PI/4);
    s.pos.add(p);
    list.add(s);
  }

  if (key == '-' || key == '-') {
    Skud s = new Skud();


    s.vel.set(1, 1);

    PVector p = new PVector(50, 0);

    s.pos.add(p);
    list.add(s);
  }
}
void keyReleased() {
  player.vel.set(0, 0);

}
