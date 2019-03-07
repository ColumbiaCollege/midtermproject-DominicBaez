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
  int ydirection2 = 1;
  PImage meteor;
  PImage meteor2;
  PImage meteor3;
  PImage meteor4;

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
    meteor2 = loadImage("meteor2.png");
    xpos4 = 560;
    ypos4 = 0;
  }
  void move() {
    xpos = xpos+(xspeed*xdirection);
    ypos = ypos+(yspeed*ydirection);
    if (ypos>500) {
      xpos = random(50, 280);
      ypos = 0;
      crater = false;
    }
    if (ypos>350 && abs(goomba.xPos-xpos)<30) {
      crater = true;
      fill (#674E3D);
      ellipse(goomba.xPos, 360, 50, 15);
    }
    xpos2 = xpos2+(xspeed*xdirection2);
    ypos2 = ypos2+(yspeed*ydirection2);
    if (ypos2>500) {
      xpos2 = random(140, 420);
      ypos2 = 0;
      crater = false;
    }
    if (ypos2>350 && abs(goomba.xPos-xpos2)<30) {
      crater = true;
      fill (#674E3D);
      ellipse(goomba.xPos, 360, 50, 15);
    }
    xpos3 = xpos3+(xspeed*xdirection);
    ypos3 = ypos3+(yspeed*ydirection);
    if (ypos3>500) {
      xpos3 = random(280, 560);
      ypos3 = 0;
      crater = false;
    }
    if (ypos3>350 && abs(goomba.xPos-xpos3)<30) {
      crater = true;
      fill (#674E3D);
      ellipse(goomba.xPos, 360, 50, 15);
    }
    xpos4 = xpos4+(xspeed*xdirection2);
    ypos4 = ypos4+(yspeed*ydirection2);
    if (ypos4>500) {
      xpos4 = random(420, 650);
      ypos4 = 0;
      crater = false;
    }
    if (ypos4>350 && abs(goomba.xPos-xpos4)<30) {
      crater = true;
      fill (#674E3D);
      ellipse(goomba.xPos, 360, 50, 15);
    }
  }
  void display() {
    image(meteor, xpos, ypos, 40, 40);
    image(meteor2, xpos2, ypos2, 40, 40);
    image(meteor, xpos3, ypos3, 40, 40);
    image(meteor2, xpos4, ypos4, 40, 40);
  }
}
