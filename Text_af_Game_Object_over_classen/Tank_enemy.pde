class TankEnemy extends Tank {
  void display() {
       if(!isDead)
    super.display();
  }

  void update() {
    for (int i= 0; i < list.size(); i++) {
      GameObject go = list.get(i);
      if(go.isDead)continue;
      if (!(go instanceof TankPlayer))continue;

   if (isDead == true){
     return;
   }else{
      if (dist(pos.x, pos.y, player.pos.x, player.pos.y)<=80) {

        //println("TANK INFO:" + this +" "+ dist(pos.x, pos.y, enemy.pos.x, enemy.pos.y) + " pos enemy:" + enemy.pos + " pos:" + pos);


        Skud e = new Skud();
        PVector pssd = PVector.sub(player.pos,enemy.pos);
        pssd.normalize();
        PVector paad = pssd.copy().mult(30);     
        e.pos.set(enemy.pos.x + paad.x, enemy.pos.y + paad.y);
        
        e.vel = pssd;


        list.add(e);
     }
    }


    super.update();
  }


  }
 /* void collisionDetection(GameObject g2){
      if(isDead || g2.isDead)return;

      println("gameobject collision!:" + dist(pos.x, pos.y, g2.pos.x, g2.pos.y) + " " + (collisionRadius+collisionRadius) + " " + isDead);
    if (dist(pos.x, pos.y, g2.pos.x, g2.pos.y)<=(collisionRadius+collisionRadius)) {

    isDead = true;




      }
    }*/

}
