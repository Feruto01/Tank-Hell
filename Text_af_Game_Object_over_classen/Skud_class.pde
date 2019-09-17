class Skud extends GameObject {






  void keyPressed () {

    if (key == 'f')
      ellipse(player.pos.x, player.pos.y, collisionRadius/2, collisionRadius/2);
  }
}
