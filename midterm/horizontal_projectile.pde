class rock {
  float xpos, ypos;
  float xpos2, ypos2;
  float xpos3, ypos3;
  float xpos4, ypos4;
  float xspeed = 2;
  float yspeed = 6;
  int xdirection = -1;
  int ydirection = 1;
  int xdirection2 = 1;
  int ydirection2 = -1;
  PImage meteor;
  PImage meteor2;
  
  rock() {
    meteor = loadImage("meteor.png");
    xpos = 140;
    ypos = 0;
    meteor2 = loadImage("meteor2.png");
    xpos2 = 280;
    ypos2 = 0;
    meteor = loadImage("meteor.png");
    xpos3 = 420;
    ypos3 = 0;
    meteor2 = loadImage("meteor.png");
    xpos4 = 560;
    ypos4 = 0;
  }
  void move() {
    xpos = xpos+(xspeed*xdirection);
    ypos = ypos+(yspeed*ydirection);
    if (ypos>500) {
      xpos = 140;
      ypos = 0;
      crater = false;
    }
    if (ypos>350 && abs(goomba.xPos-xpos)<30) {
      crater = true;
      fill (#674E3D);
      ellipse(goomba.xPos,360,50,15);
    }
    xpos2 = xpos2+(xspeed*xdirection2);
    ypos2 = ypos2+(yspeed*ydirection2);
    if (ypos2>500) {
      xpos2 = 280;
      ypos2 = 0;
      crater = false;
    }
    if (ypos2>350 && abs(goomba.xPos-xpos2)<30) {
      crater = true;
      fill (#674E3D);
      ellipse(goomba.xPos,360,50,15);
    }
  }
  void display() {
    image(meteor,xpos,ypos,40,40);
    image(meteor2,xpos2,ypos2,20,20);
  }
}
