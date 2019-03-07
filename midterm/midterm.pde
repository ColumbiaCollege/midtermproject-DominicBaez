rock meteor2;
projectile meteor;
Player goomba;

boolean right = false;
boolean left = false;
boolean crater = false;
boolean start = false;

void setup() {
  size(700, 500);
  imageMode(CENTER);
  meteor2 = new rock();
  imageMode(CENTER);
  meteor = new projectile();
  imageMode(CENTER);
  goomba= new Player();
}
void draw() {
  background (#1D8CDE);
  if (start == false) {
    fill (0);
    textSize(25);
    text ("keys -> a= right, d= left, s=start", 150, height/2);
  }
  if (start ==true) {
    if (!crater) {
      goomba.move();
      goomba.display();
      meteor.display();
      meteor2.display();
      fill(#29B23F);
      rect(0, 350, 700, 200);
      meteor.move();
      meteor2.move();
    }
    if (crater == true) {
      fill(#29B23F);
      rect(0, 350, 700, 200);
      fill (#674E3D);
      ellipse(goomba.xPos, 360, 50, 15);
      fill (0);
      textSize (25);
      text("GAME OVER", 300, height/2);
    }
  }
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
  if (keyPressed == true) {
    if (key == 's') {
      start = true;
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
