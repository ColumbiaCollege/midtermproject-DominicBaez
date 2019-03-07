class projectile {
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
  projectile() {
    meteor = loadImage("meteor.png");
    xpos = width;
    ypos = 0;
    meteor2 = loadImage("meteor2.png");
    xpos2 = 0;
    ypos2 = 0;
  }

  void move() {
    xpos = xpos+(xspeed*xdirection);
    ypos = ypos+(yspeed*ydirection);
    if (xpos<0) {
      xpos = width;
      ypos = random(0,100);
      crater = false;
    }
    if (ypos>350 && abs(goomba.xPos -xpos)<30) {
      crater = true;
      fill(#674E3D);
      ellipse(goomba.xPos, 360, 50, 15);
    }
    xpos2 = xpos2+(xspeed*xdirection2);
    ypos2 = ypos2+(yspeed*ydirection2);
    if (xpos2>width) {
      xpos2 = 0;
      ypos2 = random(0,100);
      crater = false;
    }
    if (ypos2>350 && abs(goomba.xPos-xpos2)<30) {
      crater = true;
      fill (#674E3D);
      ellipse(goomba.xPos, 360, 50, 15);
    }
  }
  void display() {
    image(meteor, xpos, ypos, 50, 50);
    image(meteor2, xpos2, ypos2, 50, 50);
  }
}
