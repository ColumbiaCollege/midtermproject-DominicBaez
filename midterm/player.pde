class Player {
//variables
float xPos;
float yPos;
PImage goomba;


//constructor
Player(){
  goomba = loadImage("goomba.png");
  xPos = width/2;
  yPos = 340;
}

//methods
void move(){
  if (left) {
      xPos = xPos-.75;
      if (xPos<0) {
        xPos = width;
      }
    }
    if (right) {
      xPos = xPos+.75;
      if (xPos>width) {
        xPos = 0;
      }
    }
}
void display(){
  image(goomba, xPos, yPos, 20, 20);
}

}
