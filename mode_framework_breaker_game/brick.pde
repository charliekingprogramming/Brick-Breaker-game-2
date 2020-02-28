class Brick {
  
  //1. Instance Variables 
  float x, y;
  color c;
  int hp;
  
  //2. Constructor(s) - initializing the Instance Variables
  //                  - no return type (void)
  //                  - same name as the class
  
  Brick() {
    x = gridx;
    y = gridy;
    hp = 1;
    c = #FFFFFF;
    bricknumber = 55;
  }
  
  
  //3. Behaviour Functions
  void act() {
    if (hp > 0 && dist(bx, by, x, y) < 35) {
     hp = hp - 1;
     bvx = (bx - x)/6;
     bvy = (by - y)/6;
     bricknumber = bricknumber - 1;
      
    }
    
  }
  
  void show() {
    if (hp > 0) {
   fill(c); 
   ellipse(x,y,50,50);
   
    }
  }
  
  
}
