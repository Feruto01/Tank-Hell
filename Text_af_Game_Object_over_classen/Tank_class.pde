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


//UDENFOR TANK KLASSEN

void keyPressed() {
    PVector vel = new PVector (0,-1);
  
 
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
if(key == 'f'){
  Skud s = new Skud();
  s.pos.set(player.pos.x,player.pos.y);
  s.vel.set(4,4);
  s.vel.rotate(angle - 3*PI/4);
  list.add(s);
}


}

void keyReleased() {
    player.vel.set(0, 0);
}
