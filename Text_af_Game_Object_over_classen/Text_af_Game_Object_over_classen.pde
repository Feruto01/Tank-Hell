float angle = 0;

class GameObject {
  PVector pos = new PVector();
  PVector vel = new PVector();

  float collisionRadius = 10;

  void display() {
    ellipse(pos.x, pos.y, 2*collisionRadius, 2*collisionRadius);
  }


  void update() {
    pos.add(vel);
    for (GameObject g2: list){
      if (g.equals(g2)){
      continue;
   }
    if (dist(player.pos.x, player.pos.y, wall.pos.x, wall.pos.y)<=collisionRadius+collisionRadius) {
      vel.x *= -1;
      vel.y *= -1;
    }
   }
    if (pos.x<= 0){
    vel.x *= -1;
   }
   
     if (pos.x>= width){
     vel.x *= -1;
   }
   
     if (pos.y<= 0){
     vel.y *= -1;
   }
   
     if (pos.y>= height){
     vel.y *= -1;
   }
  }
  
}
