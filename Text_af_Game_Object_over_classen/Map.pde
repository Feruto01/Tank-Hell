GameObject player = new Tank();
  GameObject wall   = new Wall();

  ArrayList<GameObject> list = new ArrayList<GameObject>();




 

void setup(){
 
 size(500,500);
 
 
  player.pos.set(100,100);
  player.vel.set(1,1);
  wall.pos.set(200,200);
  
  list.add(player);
  list.add(wall);
  
}

void draw(){
  clear();
  for(GameObject g: list){
    g.display();
    g.update();
  }
}
