class Skud extends GameObject {

  
  
  


PVector vel = new PVector(6,6);

  void keyPressed () {
    if (key == 'F') {
    fill(200,200,0);
   ellipse(player.pos.x, player.pos.y, collisionRadius/2, collisionRadius/2);




    }
  }
  
  
  void display() {
    
     if (keyPressed)
    {
      if (key == 'f' || key == 'F'){
     
        fill(255);
        ellipse(player.pos.x, player.pos.y, collisionRadius/2, collisionRadius/2);
        
      }
     


         
    }
    
  }
}
 
