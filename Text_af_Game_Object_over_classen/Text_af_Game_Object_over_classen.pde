float angle = 0;

class GameObject {

  float lifespan = 0;
  PVector pos = new PVector();
  PVector vel = new PVector();
  PVector acceleration = new PVector();

  float collisionRadius = 10;

  void display() {
    ellipse(pos.x, pos.y, 2*collisionRadius, 2*collisionRadius);
  }


  void update() {
    pos.add(vel);

    if (this instanceof Skud) {
      println("DER ER SKUD" + pos + " " + vel);
      
    }


    for (GameObject g2 : list) {
      if (this.equals(g2)) {
        return;
      }
      if (dist(pos.x, pos.y, g2.pos.x, g2.pos.y)<=collisionRadius+collisionRadius) {
        g2.vel.x *= -1;
        g2.vel.y *= -1;
      }
      
      if (dist(player.pos.x, player.pos.y, g2.pos.x, g2.pos.y)<=collisionRadius+collisionRadius) {
      //remove(player);
      }


/*
      if (g2.pos.x<= 0) {
        g2.vel.x *= -1;
        g2.pos.x = 0+10;
      }

      if (g2.pos.x>= width) {
        g2.vel.x *= -1;
        g2.pos.x = width-10;
      }

      if (g2.pos.y<= 0) {
        g2.vel.y = -1;
        g2.pos.y = 10;
      }

      if (g2.pos.y>= height) {
        g2.vel.y *= -1;
        g2.pos.y = height + 10;
      }*/
    }
    
  }
  
}
