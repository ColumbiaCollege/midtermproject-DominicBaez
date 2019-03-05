class Projectile {
  float xpos, ypos;
  float xpos2, ypos2;
  float xpos3, ypos3;
  float xpos4, ypos4;
  float xspeed = 2;
  float yspeed = 7;
  int xdirection = -1;
  int ydirection = 1;
  int xdirection2 = 1;
  int ydirection2 = -1;
  PImage meteor;
  PImage meteor2;
  
  Projectile() {
    meteor = loadImage("meteor.png");
    xpos = 140;
    ypos = 0;
    meteor2 = loadImage("meteor2.png");
    xpos = 280;
    ypos = 0;
    meteor = loadImage("meteor.png");
    xpos = 420;
    ypos = 0;
    meteor2 = loadImage("meteor.png");
    xpos = 560;
    ypos = 0;
  }
  void move() {
    xpos = xpos+(xspeed*xdirection);
    ypos = ypos+(yspeed*ydirection);
    
  }
  void display() {}
}
