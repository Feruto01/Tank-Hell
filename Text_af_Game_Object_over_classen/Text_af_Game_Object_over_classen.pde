






class GameObject{
  PVector pos = new PVector();
  PVector vel = new PVector();
  
  float collisionRadius = 10;
  
  void display(){
   ellipse(pos.x,pos.y,collisionRadius,collisionRadius);
  }
  
  void update(){
    pos.add(vel);
    
  //  if (collisionRadius+collisionRadius) <= distance(player.add(wall){
  //    vel.x *= -1;
  //    vel.y *= -1;
    }
  }
