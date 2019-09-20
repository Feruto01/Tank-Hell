void keyPressed() {
  PVector vel = new PVector (0, -3);
  vel = vel.rotate( player.angle );


  if (key == 'w' || key =='W') {
    player.vel.set(vel.x, vel.y);
  }

  if (key == 's' || key == 'S') {
    player.vel.set(-vel.x, -vel.y);
  }

  if (key == 'a' || key == 'A') {
    player.angle += -0.1;
  }
  if (key == 'd' || key == 'D') {
    player.angle += 0.1;

  }
  if (key == 'f' || key == 'F') {
    Skud s = new Skud();

    s.pos.set(player.pos.x, player.pos.y);
    s.vel.set(4, 4);
    s.vel.rotate(player.angle - 3*PI/4);
    PVector p = new PVector(50, 0);
    p.rotate(player.angle - 2*PI/4);
    s.pos.add(p);
    list.add(s);

  }
}
void keyReleased() {
  player.vel.set(0, 0);

}
