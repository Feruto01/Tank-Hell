GameObject player = new Tank();
GameObject wall   = new Wall();

ArrayList<GameObject> list = new ArrayList<GameObject>();



public void settings() {
  size(500, 500);
}


void setup() {


  player.pos.set(100, 100);
  player.vel.set(0, 0);
  wall.pos.set(200, 200);

  list.add(player);
  list.add(wall);
}

void draw() {
  clear();
  for (GameObject g : list) {
    g.display();
    g.update();
  }
}
