class Skud extends GameObject {


PVector vel = new PVector(2,2);

  void keyPressed () {
    if (key == 'F') {
    fill(200,200,0);
   // ellipse(player.pos.x, player.pos.y, collisionRadius/2, collisionRadius/2);
    pos = player.pos;




    }
  }
  void display() {
    pos = pos.add(vel);
    if (keyPressed)
    {
      if (key == 'f' || key == 'F'){
        println("Pressed F");
        fill(255);
        ellipse(player.pos.x, player.pos.y, collisionRadius/2, collisionRadius/2);
      }
    }

  }
  void update(){
    pos = pos.add(vel);
  }
}
