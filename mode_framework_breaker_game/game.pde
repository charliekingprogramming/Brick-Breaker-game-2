void game() {
  background(0, 0, 255);

fill(255);
 rect(700, 0, 100, 50);

  int i = 0;
  while (i < 55) {
    Brick b = myBricks.get(i);
    b.act();
    b.show();
    i++;
  }

  ball();
  paddle();
}

void gameClicks() {
  
  if (mouseX > 700 && mouseX < 800 && mouseY > 0 && mouseY < 50) {
    
    mode = PAUSE;
    
  }
  
  
  
}

void ball() {
  ellipse(bx, by, 20, 20);


  // move the ball
  bx = bx + bvx;
  by = by + bvy;
  if (bx < 0 || bx > width) {

    bvx = -bvx; //bounce off the left and right walls
  }
  if (by < 0 ) {

    bvy = -bvy;//bounce off the top and bottom walls
  }
  

  if (dist(bx, by, px, py) < 60) {
    bvx = (bx - px)/6;
    bvy = (by - py)/6;
  }


  if (bricknumber < 1) {
    mode = WIN;
    
  }
  
  if (by > 600) {
    mode = GAMEOVER;
  } 
}


void paddle() {
  ellipse(px, py, 100, 100);
  if (rightKey) px = px +5;
  if (leftKey) px = px - 5;
  
  
  
  
}
