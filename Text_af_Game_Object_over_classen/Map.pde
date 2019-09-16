GameObject player = new Tank();
  GameObject wall   = new Wall();

  ArrayList<GameObject> list = new ArrayList<GameObject>();



public void settings() {
  size(500, 500);
}
 

void setup(){
 
// size(500,500);
 
 
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
    
    for(GameObject g2: list){
      if (g.equals(g2)) {
        continue;
      }
      
     if(dist(g.pos.x,g.pos.y,g2.pos.x,g2.pos.y)  <=  (g.collisionRadius+g2.collisionRadius)){
     g.vel.x  *= -1;
     g.vel.y = g.vel.y * (-1);
      
   
    }
    
   if (g.pos.x== 0){
     g.vel.x *= -1;
   }
   
     if (g.pos.x== width){
     g.vel.x *= -1;
   }
   
     if (g.pos.y== 0){
     g.vel.y *= -1;
   }
   
     if (g.pos.y== height){
     g.vel.y *= -1;
   }
   
   
    }
   }
   

}
