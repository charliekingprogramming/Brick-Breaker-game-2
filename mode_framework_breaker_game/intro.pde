void intro() {
  
  background(5, 10, 30);
  
  fill(255);
 rect(300, 250, 200, 100);
 
 fill(123, 123, 123);
 textSize(80);
 text("Play" , 325, 325);
 

}
 
 void introClicks() {
 if (mouseX > 300 && mouseX < 500 && mouseY > 250 && mouseY < 350) {
    
    mode = GAME;
    setup();
    
 } 
 
}
