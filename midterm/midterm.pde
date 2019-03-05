projectile meteor;
Player goomba;

//float xPos2, yPos2;
//float xspeed = 5;
//float yspeed = 3;
//int xdirection = -1;
//int ydirection = 1;

boolean right = false;
boolean left = false;
boolean crater = false;

void setup() {
  size(700, 500);

  //meteor = loadImage("meteor.png");
  //xPos2 = width;
  //yPos2 =0;

  imageMode(CENTER);
  meteor = new projectile();
  imageMode(CENTER);
  goomba= new Player();
}
void draw() {
  background (#1D8CDE);
  if (!crater) {
    goomba.move();
    goomba.display();
  }
  //xPos2 = xPos2+(xspeed*xdirection);
  //yPos2 = yPos2+(yspeed*ydirection);
  //image(meteor, xPos2, yPos2, 40, 40);
  //if (xPos2<0) {
  //  xPos2 = width;
  //  yPos2 = 0;
  //  crater = false;
  //}
  meteor.display();
  fill(#29B23F);
  rect(0, 350, 700, 200);
  meteor.move();
  //if (yPos2>350 && abs(goomba.xPos -xPos2)<30) {
  //  crater = true;
  //  fill(#674E3D);
  //  ellipse(goomba.xPos, 360, 50, 15);
  //}
}
void keyPressed() {
  if (keyPressed == true) {
    if (key == 'a') {
      left = true;
    }
  }
  if (keyPressed == true) {
    if (key == 'd') {
      right = true;
    }
  }
}
void keyReleased() {
  if (key =='a') {
    left = false;
  }
  if (key == 'd') {
    right = false;
  }
}
