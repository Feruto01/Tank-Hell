
class GameObject {
  float lifespanSkud  = 700.0;
  float lifespan = 0;
  PVector pos = new PVector();
  PVector vel = new PVector();
  PVector acceleration = new PVector();

  float collisionRadius = 10;

  boolean isDead = false;

  float angle = 0;


  void display() {
    
    ellipse(pos.x, pos.y, 2*collisionRadius, 2*collisionRadius);
  }


  void update() {
    pos.add(vel);



    for (int i= 0; i < list.size(); i++) {
      GameObject g2 = list.get(i);

      //println(i +  " :"+ this + " " + g2 + " " + (this == g2));
            if (this == g2) {
        continue;
      }
      
//      if(g2.isDead)list.remove(g2);

      collisionDetection(g2);
    }
  }

  void collisionDetection(GameObject g2) {
    if(g2.isDead)return;
  }

}
