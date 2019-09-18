float angle = 0;

class GameObject {
  

  PVector pos = new PVector();
  PVector vel = new PVector();
  PVector acceleration = new PVector();

  float collisionRadius = 10;

  void display() {
    ellipse(pos.x, pos.y, 2*collisionRadius, 2*collisionRadius);
  }


  void update() {
    pos.add(vel);
    
    if(this instanceof Skud){
      println("DER ER SKUD" + pos + " " + vel);
    }
    

    for (GameObject g2: list){
     if (g.equals(g2)){
    continue;
   }
    if (dist(player.pos.x, player.pos.y, wall.pos.x, wall.pos.y)<=collisionRadius+collisionRadius) {
      g2.vel.x *= -1;
      g2.vel.y *= -1;
    }
    
   
  
    if (g2.pos.x<= 0){
     g2.vel.x *= -1;
     g2.pos.x = 0;
   }
   
     if (g2.pos.x>= width){
     g2.vel.x *= -1;
     g2.pos.x = width;
   }
   
     if (g2.pos.y< 0){
     g2.vel.y = 1;
     g2.pos.y = 1;
   }
   
     if (g2.pos.y>= height){
     g2.vel.y *= -1;
     g2.pos.y = height;
   }
  }
  }
  
}
