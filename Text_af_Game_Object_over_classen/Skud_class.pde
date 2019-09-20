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

}
