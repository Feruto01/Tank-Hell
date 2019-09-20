class Skud extends GameObject {


  void display() {

    fill(255);
    fill(255+lifespanSkud);
    stroke (255+lifespanSkud);
    ellipse(pos.x, pos.y, collisionRadius/2, collisionRadius/2);

    if (lifespanSkud <= 0.0) {

      vel.x = (0.0);
      vel.y = (0.0);
      pos.x = (-20) ;
      pos.y = (-20) ;
    }
  }
  void collisionDetection(GameObject g2) {
    if (isDead || g2.isDead)return;

    println("gameobject collision!:" + dist(pos.x, pos.y, g2.pos.x, g2.pos.y) + " " + (collisionRadius+collisionRadius) + " " + isDead);
    if (dist(pos.x, pos.y, g2.pos.x, g2.pos.y)<=(collisionRadius+collisionRadius)) {

      isDead = true;
    }
  }
}
