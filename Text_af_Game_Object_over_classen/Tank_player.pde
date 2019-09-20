class TankPlayer extends Tank{


  void display(){
    if(!isDead)
      super.display();
  }

  
  void update(){
    
    
    if (player == player2){
    
    stroke(255);
    fill(0,0,255);
    }
    super.update();
  }


 /*  void collisionDetection(GameObject g2){
      if(isDead)return;
      println("gameobject collision!:" + dist(pos.x, pos.y, g2.pos.x, g2.pos.y) + " " + (collisionRadius+collisionRadius) + " " + isDead);
    if (dist(pos.x, pos.y, g2.pos.x, g2.pos.y)<=(collisionRadius+collisionRadius)) {

    isDead = true; 

       g2.vel.x *= -1;
       g2.vel.y *= -1;

    } */
  } 
