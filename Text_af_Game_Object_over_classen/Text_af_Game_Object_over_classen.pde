






class GameObject{
  PVector pos = new PVector();
  PVector vel = new PVector();
  
  float collisionRadius = 10;
  
  void display(){
   ellipse(pos.x,pos.y,2*collisionRadius,2*collisionRadius);
  }
  
  void update(){
    pos.add(vel);
  
   
   

  }
}

  void keyPressed() {
  if (key == 'w') {
    player.vel.set(0, 1);
  }
    if (key == 's') {
    player.vel.set(0, -1);
  }
  }
