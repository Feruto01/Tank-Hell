GameObject player = new TankPlayer();
GameObject enemy  = new TankEnemy();
GameObject enemy2  = new TankEnemy();
GameObject enemy3  = new TankEnemy();
GameObject enemy4  = new TankEnemy();
GameObject enemy5  = new TankEnemy();
GameObject enemy6  = new TankEnemy();
GameObject enemy7  = new TankEnemy();
GameObject enemy8  = new TankEnemy();
GameObject enemy9  = new TankEnemy();
GameObject enemy10  = new TankEnemy();
GameObject enemy11  = new TankEnemy();
GameObject enemy12  = new TankEnemy();
GameObject enemy13  = new TankEnemy();
GameObject enemy14  = new TankEnemy();
GameObject enemy15  = new TankEnemy();

ArrayList<GameObject> list = new ArrayList<GameObject>();

int level = 0;

float lifespan = 0;


public void settings() {
  size(800, 800);
}

void setup() {
  ((Tank)player).b=255;

  fill(0, 255, 0);
  player.pos.set(300, 600);
  player.vel.set(0, 0);


  enemy.pos.set (random(10, 750), random(10, 750));
  enemy.vel.set (random(3, -3), random(3, -3 ));

  enemy2.pos.set (random(50, 450), random(50, 450));
  enemy2.vel.set (random(1, -1), random(1, -1 ));

  enemy3.pos.set (random(50, 450), random(50, 450));
  enemy3.vel.set (random(1, -1), random(1, -1 ));

  enemy4.pos.set (random(50, 450), random(50, 450));
  enemy4.vel.set (random(1, -1), random(1, -1 ));
  
   enemy5.pos.set (random(10, 750), random(10, 750));
  enemy5.vel.set (random(3, -3), random(3, -3 ));
  
   enemy6.pos.set (random(10, 750), random(10, 750));
  enemy6.vel.set (random(3, -3), random(3, -3 ));
  
   enemy7.pos.set (random(10, 750), random(10, 750));
  enemy7.vel.set (random(3, -3), random(3, -3 ));
  
   enemy8.pos.set (random(10, 750), random(10, 750));
  enemy8.vel.set (random(3, -3), random(3, -3 ));
  
   enemy9.pos.set (random(10, 750), random(10, 750));
  enemy9.vel.set (random(3, -3), random(3, -3 ));
  
   enemy10.pos.set (random(10, 750), random(10, 750));
  enemy10.vel.set (random(3, -3), random(3, -3 ));
  
   enemy11.pos.set (random(10, 750), random(10, 750));
  enemy11.vel.set (random(3, -3), random(3, -3 ));
  
   enemy12.pos.set (random(10, 750), random(10, 750));
  enemy12.vel.set (random(3, -3), random(3, -3 ));
  
   enemy13.pos.set (random(10, 750), random(10, 750));
  enemy13.vel.set (random(3, -3), random(3, -3 ));
  
   enemy14.pos.set (random(10, 750), random(10, 750));
  enemy14.vel.set (random(3, -3), random(3, -3 ));
  
   enemy15.pos.set (random(10, 750), random(10, 750));
  enemy15.vel.set (random(3, -3), random(3, -3 ));



  list.add(player);

  list.add(enemy);
  list.add(enemy2);
  list.add(enemy3);
  list.add(enemy4);
   list.add(enemy5);
    list.add(enemy6);
     list.add(enemy7);
      list.add(enemy8);
       list.add(enemy9);
        list.add(enemy10);
         list.add(enemy11);
          list.add(enemy12);
           list.add(enemy13);
            list.add(enemy14);
             list.add(enemy15);
}

void draw() {

  clear();

  text("LEVEL " + level , 100,100);

  for (int i= 0; i < list.size(); i++) {
    GameObject g = list.get(i);
    g.display();
    g.update();


    if(g.isDead)list.remove(g);


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
