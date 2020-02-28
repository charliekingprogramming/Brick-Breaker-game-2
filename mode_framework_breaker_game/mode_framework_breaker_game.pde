ArrayList<Brick> myBricks;


//mode framework variables
final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
final int WIN = 5;
int mode = INTRO;//1: intro screen, 2: game playing, 3

float bx, by, bvx, bvy, bricknumber; //ball variables

//paddle variables
float px, py;

//keyboard variables
boolean leftKey, rightKey;

//brick planning variables
float gridx, gridy;

void setup() {
  myBricks = new ArrayList<Brick>(); 
  
  gridx = 100;
  gridy = 50;
  
  int i = 0;
  while (i < 55) {
   myBricks.add(new Brick() ); //calling constructor
   gridx = gridx + 60;
   if (gridx >= 750) {
     gridx = 100;
     gridy = gridy + 60;
     
   }
    i++;
  }
  
  size(800, 600);
  bx = width/2;
  by = 450;
  bvx = 0;
  bvy = 1;
  
  //paddle
  px = width/2;
  py = height+10;
 
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == WIN) {
    win();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
