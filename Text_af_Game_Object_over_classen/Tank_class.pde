class Tank extends GameObject {


  Float lifespanSkud  = 500.0;



  void display() {
    lifespanSkud += -1;
    pushMatrix();
    translate(player.pos.x, player.pos.y);
    rotate(angle);

    rect(0 - 15, 0 - 15, 30, 30);
    rect(0 -5, 0 - 30, 10, 30);
    popMatrix();
    fill(0, 255, 0);
    super.display();
    fill(255);



  }
}
  void update(){



fill(255+lifespanSkud);
stroke (255+lifespanSkud);
/*   if  (s = g);{
      lifespan = -50;
     }
*/


    if (enemy.pos.x<= 0) {
        enemy.vel.x *= -1;
        enemy.pos.x = 0+10;
      }

      if (enemy.pos.x>= width) {
        enemy.vel.x *= -1;
        enemy.pos.x = width-10;
      }

      if (enemy.pos.y<= 0) {
        enemy.vel.y = -1;
        enemy.pos.y = 10;
      }

      if (enemy.pos.y>= height) {
        enemy.vel.y *= -1;
        enemy.pos.y = height + 10;
      }



    }



//UDENFOR TANK KLASSEN

void keyPressed() {
  PVector vel = new PVector (0, -1);
  vel = vel.rotate(angle);
  if (key == 'w') {
    player.vel.set(vel.x, vel.y);
  }
  if (keyCode == UP) {
    player2.vel.set(vel.x, vel.y);
  }
  if (key == 's') {
    player.vel.set(-vel.x, -vel.y);
  }
  if (keyCode == DOWN) {
    player2.vel.set(-vel.x, -vel.y);
  }

  if (key == 'a') {
    angle += -0.1;
  }
  if (key == 'd') {
    angle += 0.1;
  }
  if (key == 'f') {
       fill(255+lifespanSkud);
stroke (255+lifespanSkud);
    Skud s = new Skud();

    s.pos.set(player.pos.x, player.pos.y);
    s.vel.set(1, 1);
    s.vel.rotate(angle - 3*PI/4);

    list.add(s);

  }
     Skud e = new Skud();

if(dist(player.pos.x,player.pos.y,enemy.pos.x,enemy.pos.y)<=200) {

    e.pos.set(enemy.pos.x, enemy.pos.y);
    e.vel.set(1,1);
    e.vel.rotate(angle - 3*PI/4);

    list.add(e);
}
}

void keyReleased() {
  player.vel.set(0, 0);
}
