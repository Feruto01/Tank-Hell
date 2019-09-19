GameObject player = new TankPlayer();
GameObject player2 = new TankPlayer();
GameObject wall   = new Wall();
// GameObject skud   = new Skud();
GameObject enemy  = new TankEnemy();

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

  for (int i= 0; i < list.size(); i++) {
    GameObject g = list.get(i);
    g.display();
    g.update();



  g.lifespanSkud += -1;
    

    if (keyPressed) {

      if (key == 'f'||key == 'F') {
        //g.lifespanSkud = 500.0;
      }
    }


  //  println(g.lifespanSkud);



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
