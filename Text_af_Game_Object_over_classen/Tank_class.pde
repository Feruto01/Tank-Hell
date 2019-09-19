class Tank extends GameObject {

  
  void display() {   
    
    lifespanSkud += -1;
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(angle);

    rect(0 - 15, 0 - 15, 30, 30);
    rect(0 -5, 0 - 30, 10, 30);
    popMatrix();
    fill(0, 255, 0);
    super.display();
    fill(255);
  }
  

}
