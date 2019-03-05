class projectile {
  float xpos;
  float ypos;
  float xspeed = 5;
  float yspeed = 3;
  int xdirection = -1;
  int ydirection = 1;
  PImage meteor;

  projectile() {
    meteor = loadImage("meteor.png");
    xpos = width/2;
    ypos = 0;
  }

  void move() {
      xpos = xpos+(xspeed*xdirection);
  ypos = ypos+(yspeed*ydirection);
    if (xpos<0) {
    xpos = width;
    ypos = 0;
    crater = false;
  }
    if (ypos>350 && abs(goomba.xPos -xpos)<30) {
    crater = true;
    fill(#674E3D);
    ellipse(goomba.xPos, 360, 50, 15);
  }
  }
  void display() {
    image(meteor,xpos,ypos,40,40);
  }
}
