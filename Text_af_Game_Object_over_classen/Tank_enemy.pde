class TankEnemy extends Tank {

  void display() {
    super.display();
  }

  void update() {
    for (int i= 0; i < list.size(); i++) {

      GameObject go = list.get(i);
      if(go.isDead)continue;
      if (!(go instanceof TankPlayer))continue;


      if (dist(pos.x, pos.y, player.pos.x, player.pos.y)<=80) {

        //println("TANK INFO:" + this +" "+ dist(pos.x, pos.y, enemy.pos.x, enemy.pos.y) + " pos enemy:" + enemy.pos + " pos:" + pos);
        Skud e = new Skud();
        
        e.vel.set(1,1);
        e.pos.set(enemy.pos.x, enemy.pos.y);
        
        

        list.add(e);
      }
    }
    super.update();
  }
}
