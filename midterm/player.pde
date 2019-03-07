//identifier for the player class
class Player {
//variables
float xPos;
float yPos;
PImage goomba;


//constructor
Player(){
  //image used for the player at these coordinates
  goomba = loadImage("goomba.png");
  xPos = width/2;
  yPos = 340;
}

//methods
void move(){
  // if the 'a' key is pressed then the player will move at three thirds of a pixel along the x-axis
  if (left) {
      xPos = xPos-.75;
      //wrapping condition where the player will return to the other side of the screen when it goes offscreen
      if (xPos<0) {
        xPos = width;
      }
    }
    //if the 'd' key is pressed then the player will move at three thirds of a pixel along the x-axis
    if (right) {
      xPos = xPos+.75;
      //wrapping condition where the player will return to the other side of the screen when it goes offscreen
      if (xPos>width) {
        xPos = 0;
      }
    }
}
void display(){
 //displays the image at the set position with the size ratio
  image(goomba, xPos, yPos, 20, 20);
}

}
