GameObject player = new Tank();
GameObject player2 = new Tank();
GameObject wall   = new Wall();
// GameObject skud   = new Skud();
GameObject enemy  = new Tank();

ArrayList<GameObject> list = new ArrayList<GameObject>();


float lifespan = 0;

public void settings() {
  size(500, 500);
}

void setup() {


  player.pos.set(300, 300);
  player.vel.set(0, 0);
  wall.pos.set(200, 200);
  //skud.pos.set(200, 300);
  stroke (255-lifespan);
  fill (255-lifespan);
  enemy.pos.set (400, 100);
  enemy.vel.set (-1, 1);



  list.add(player);
  list.add(wall);
  list.add(enemy);
  //  list.add(skud);
}

void draw() {
  clear();
  for (GameObject g : list) {
    g.display();
    g.update();


    if (g.pos.x<= 0) {
      g.vel.x *= -1;
      g.pos.x = 0+10;
    }

    if (g.pos.x>= width) {
      g.vel.x *= -1;
      g.pos.x = width-10;
    }

    if (g.pos.y<= 0) {
      g.vel.y *= -1;
      g.pos.y = 10;
    }

    if (g.pos.y>= height) {
      g.vel.y *= -1;
      g.pos.y = height - 10;
    }
  }
}
