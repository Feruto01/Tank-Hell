class Tank extends GameObject {

  boolean isDead = false;
  
  void display() {   
    if(isDead)return;
    
    lifespanSkud += -1;
    pushMatrix();
    translate(player.pos.x, player.pos.y);
    rotate(angle);

    rect(0 - 15, 0 - 15, 30, 30);
    rect(0 -5, 0 - 30, 10, 30);
    popMatrix();
    fill(0, 255, 0);
    super.display();
    fill(255);
  }
  
  void update(){
    if (isDead = true){
      Tank.clear();
      
      
    }
    if(isDead)return;
 
    super.update();
  }

}
