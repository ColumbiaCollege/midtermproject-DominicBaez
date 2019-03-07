//identifier for the ypos projectile object
class projectile {
  //variables
  float xpos, ypos;
  float xpos2, ypos2;
  float xspeed = 5;
  float yspeed = 3;
  int xdirection = -1;
  int ydirection = 1;
  int xdirection2 = 1;
  int ydirection2 = 1;
  PImage meteor;
  PImage meteor2;
  //constructor
  projectile() {
    //loads two images, depending on the location of the spawn determines which will be displayed
    meteor = loadImage("meteor.png");
    xpos = width;
    ypos = 0;
    meteor2 = loadImage("meteor2.png");
    xpos2 = 0;
    ypos2 = 0;
  }

  void move() {
    //equations for first meteor to move left
    xpos = xpos+(xspeed*xdirection);
    ypos = ypos+(yspeed*ydirection);
    //if statement that respawns the meteor if the coniditions are met
    if (xpos<0) {
      xpos = width;
      ypos = random(0,100);
      crater = false;
    }
    //if statement that turns the crater boolean true if the conditions are met
    if (ypos>350 && ypos<360 && abs(goomba.xPos -xpos)<30) {
      crater = true;
      fill(#674E3D);
      ellipse(goomba.xPos, 360, 50, 15);
    }
    //equations for second meteor to move right
    xpos2 = xpos2+(xspeed*xdirection2);
    ypos2 = ypos2+(yspeed*ydirection2);
    //if statement that respawns the meteor if the condition is met
    if (xpos2>width) {
      xpos2 = 0;
      ypos2 = random(0,100);
      crater = false;
    }
    //if statement that turns the crater boolean true if the conditions are met
    if (ypos2>350 && ypos2<360 && abs(goomba.xPos-xpos2)<30) {
      crater = true;
      fill (#674E3D);
      ellipse(goomba.xPos, 360, 50, 15);
    }
  }
  //display method
  void display() {
    //displays a meteor with these variables
    image(meteor, xpos, ypos, 50, 50);
    //displays a second meteor with these variables
    image(meteor2, xpos2, ypos2, 50, 50);
  }
}
