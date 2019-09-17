GameObject player = new Tank();
GameObject wall   = new Wall();
GameObject skud   = new Skud();

ArrayList<GameObject> list = new ArrayList<GameObject>();


 

public void settings(){
 size(500, 500);
}

void setup() {

 
  player.pos.set(100, 100);
  player.vel.set(0, 0);
  wall.pos.set(200, 200);
  

  list.add(player);
  list.add(wall);
  list.add(skud);
}

void draw() {
  clear();
  for (GameObject g : list) {
    g.display();
    g.update();
  }
}



  
