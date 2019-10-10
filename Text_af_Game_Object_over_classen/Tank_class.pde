class Tank extends GameObject {
 int maxLoadTime = 30;
  int loadingTime = 30;
  float r, g, b;

  void display() {

    lifespanSkud += -1;
    pushMatrix();
    stroke(0);
    fill(255);
    translate(pos.x, pos.y);
    rotate(angle);


    rect(0 - 15, 0 - 15, 30, 30);
    rect(0 -5, 0 - 30, 10, 30);
    popMatrix();
    fill(r, g, b);
    super.display();
    fill(255);
  }
       

 




  void collisionDetection(GameObject g2) {
    if (isDead || g2.isDead && !(g2 instanceof Skud))return;


    if (dist(pos.x, pos.y, g2.pos.x, g2.pos.y)<=(collisionRadius+collisionRadius)) {
      if(this instanceof TankEnemy && g2 instanceof TankEnemy) return;
      isDead = true;
       if(this instanceof TankEnemy ) level++;

    }
  }
}
