float angle = 0;
Float lifespanSkud  = 500.0;

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

    for (int i= 0; i < list.size(); i++) {
      GameObject g2 = list.get(i);

      if (this.equals(g2)) {
        return;
      }
      if (dist(pos.x, pos.y, g2.pos.x, g2.pos.y)<=collisionRadius+collisionRadius) {
        g2.vel.x *= -1;
        g2.vel.y *= -1;
      }

    }
  }
}
