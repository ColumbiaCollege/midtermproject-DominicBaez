//class identifiers for the objects
rock meteor2;
rock rocky;
projectile meteor;
Player goomba;

//booleans for movement and lose conditions and initial start
boolean right = false;
boolean left = false;
boolean crater = false;
boolean start = false;

//sets the window size
void setup() {
  size(700, 500);
  // loads the objects and centers the image when displayed
  imageMode(CENTER);
  meteor2 = new rock();
  rocky =new rock();
  imageMode(CENTER);
  meteor = new projectile();
  imageMode(CENTER);
  goomba= new Player();
}
void draw() {
  //background wipe
  background (#1D8CDE);
  //boolean where text appears
  if (start == false) {
    fill (0);
    textSize(25);
    text ("keys -> a= right, d= left, s=start", 150, height/2);
  }
  //if the start boolean is true then the program will run
  if (start ==true) {
    //so long as the crater boolean remains false, the methods will run
    if (!crater) {
      //methods for the goomba that allow it to move and displays it on the screen
      goomba.move();
      goomba.display();
      //methods for the meteors along the ypos that allows it to move and displays it on the screen
      meteor.display();
      meteor2.display();
      //rocky.display();
      //color for the rectangle which functions as the ground
      fill(#29B23F);
      rect(0, 350, 700, 200);
      //methods for the meteors along the xpos that allows it to move and displays it on the screen
      meteor.move();
      meteor2.move();
      //rocky.move();
    }
    //if the crater boolean is true then an ellipse displays where they goomba was hit and also displays text
    if (crater == true) {
      //green background
      fill(#29B23F);
      rect(0, 350, 700, 200);
      //brown ellipse that serves as the crater
      fill (#674E3D);
      ellipse(goomba.xPos, 360, 50, 15);
      // text that displays if boolean crater is true
      fill (0);
      textSize (25);
      text("GAME OVER", 300, height/2);
    }
  }
}
void keyPressed() {
  // if the 'a' key is pressed then the player will move left
  if (keyPressed == true) {
    if (key == 'a') {
      left = true;
    }
  }
  //if the 'd' key is pressed then the player will move right
  if (keyPressed == true) {
    if (key == 'd') {
      right = true;
    }
  }
  // if the 's' key is pressed then the game will start when first initializing the program
  if (keyPressed == true) {
    if (key == 's') {
      start = true;
    }
  }
}
void keyReleased() {
  //method where when the 'a' is released the player will stop moving
  if (key =='a') {
    left = false;
  }
  //method where when the 'd' is released the player will stop moving
  if (key == 'd') {
    right = false;
  }
}
