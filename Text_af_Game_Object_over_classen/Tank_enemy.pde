class TankEnemy extends Tank {

  TankEnemy() {
    
    
    r=255;
    g=0;
    b=0;
  }


  void display() {
    if (!isDead)
      super.display();
  }

  void update() {
    for (int i= 0; i < list.size(); i++) {
      GameObject go = list.get(i);
      if (go.isDead)continue;
      if (!(go instanceof TankPlayer))continue;

      if (isDead == true) {
        return;
      } else {
        if (dist(pos.x, pos.y, player.pos.x, player.pos.y)<=80) {

          Skud e = new Skud();
          PVector pssd = PVector.sub(player.pos, enemy.pos);
          pssd.normalize();
          PVector paad = pssd.copy().mult(30);     
          e.pos.set(pos.x + paad.x, pos.y + paad.y);

          e.vel = pssd;


          list.add(e);
        }
      }


      super.update();
    }
  }
}
