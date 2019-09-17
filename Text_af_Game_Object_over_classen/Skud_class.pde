class Skud extends GameObject {


PVector vel = new PVector(2,2);  

  void keyPressed () {
    if (key == 'f') {
    fill(200,200,0);
   // ellipse(player.pos.x, player.pos.y, collisionRadius/2, collisionRadius/2);
    pos = player.pos;

    
   
      
    }
  }
  void update() {
        pos = pos.add(vel);
}
}
