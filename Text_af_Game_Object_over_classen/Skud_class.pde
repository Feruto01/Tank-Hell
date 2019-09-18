class Skud extends GameObject {






  //PVector vel = new PVector(6,6);

  void keyPressed () {
    if (key == 'F') {
      fill(200, 200, 0);
      ellipse(player.pos.x, player.pos.y, collisionRadius/2, collisionRadius/2);
    }
  }


  void display() {
    fill(255);
    ellipse(pos.x, pos.y, collisionRadius/2, collisionRadius/2);
    
      if (dist(player.pos.x, player.pos.y, enemy.pos.x, enemy.pos.y)<=200) {
      ellipse(enemy.pos.x, enemy.pos.y, collisionRadius/2, collisionRadius/2); 

    }
    /*  if (keyPressed)
     {
     if (key == 'f' || key == 'F'){
     
     fill(255);
     ellipse(player.pos.x, player.pos.y, collisionRadius/2, collisionRadius/2);
     
     }
     
     
     
     
     }*/
  }
}
