class Wall extends GameObject {
  
  PVector pos = new PVector ();
  void display(){
  
  pos.x = (400);
  pos.y = (400);
  
  square(pos.x,pos.y,(50));
  }
}
