GameObject player = new TankPlayer();
GameObject player2 = new TankPlayer();
GameObject wall   = new Wall();
GameObject enemy  = new TankEnemy();
GameObject enemy2  = new TankEnemy();
GameObject enemy3  = new TankEnemy();
GameObject enemy4  = new TankEnemy();

ArrayList<GameObject> list = new ArrayList<GameObject>();



float lifespan = 0;


public void settings() {
  size(800, 800);
}

void setup() {
  ((Tank)player).b=255;

  fill(0, 255, 0);
  player.pos.set(300, 600);
  player.vel.set(0, 0);
  fill(0, 0, 255);
  player2.pos.set(200, 600);
  player2.vel.set(0, 0);

  wall.pos.set(200, 200);
  fill (255, 0, 0);
  enemy.pos.set (random(50, 450), random(50, 450));
  enemy.vel.set (random(1, -1), random(1, -1 ));

  enemy2.pos.set (random(50, 450), random(50, 450));
  enemy2.vel.set (random(1, -1), random(1, -1 ));

  enemy3.pos.set (random(50, 450), random(50, 450));
  enemy3.vel.set (random(1, -1), random(1, -1 ));

  enemy4.pos.set (random(50, 450), random(50, 450));
  enemy4.vel.set (random(1, -1), random(1, -1 ));



  list.add(player);
  list.add(player2);
  //  list.add(wall);
  list.add(enemy);
  list.add(enemy2);
  list.add(enemy3);
  list.add(enemy4);
}

void draw() {

  clear();

  for (int i= 0; i < list.size(); i++) {
    GameObject g = list.get(i);
    g.display();
    g.update();

    g.lifespanSkud += -1;

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
