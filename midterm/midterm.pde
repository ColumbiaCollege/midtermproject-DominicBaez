projectile meteor;
Player goomba;

boolean right = false;
boolean left = false;
boolean crater = false;

void setup() {
  size(700, 500);

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
  meteor.display();
  fill(#29B23F);
  rect(0, 350, 700, 200);
  meteor.move();
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
