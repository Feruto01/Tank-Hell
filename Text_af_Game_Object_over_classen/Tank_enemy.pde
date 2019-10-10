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

        super.update();


        if (dist(pos.x, pos.y, player.pos.x, player.pos.y)<=200) {
          loadingTime--;
          if (loadingTime >0) return;
          loadingTime = maxLoadTime;


          Skud e = new Skud();
          PVector pssd = PVector.sub(player.pos, pos);
          pssd.normalize();
          PVector paad = pssd.copy().mult(30);
          e.pos.set(pos.x + paad.x, pos.y + paad.y);
          pssd.mult(4.1);
          e.vel = pssd;


          list.add(e);
         // Pew.play();
        }
      }
    }
  }
}
