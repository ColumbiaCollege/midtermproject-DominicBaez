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

  rock() {
    meteor = loadImage("meteor4.png");
    xpos = 140;
    ypos = 0;
    meteor2 = loadImage("meteor3.png");
    xpos2 = 280;
    ypos2 = 0;
    meteor = loadImage("meteor4.png");
    xpos3 = 420;
    ypos3 = 0;
    meteor2 = loadImage("meteor3.png");
    xpos4 = 560;
    ypos4 = 0;
  }
  void move() {
    if (xpos<140) {
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
    }
    if (xpos>140) {
      xpos = xpos+(xspeed*xdirection2);
      ypos = ypos+(yspeed*ydirection2);
      if (ypos>500) {
        xpos = random (50, 280);
        ypos = 0;
        crater = false;
      }
      if (ypos>350 && abs(goomba.xPos-xpos)<30) {
        crater = true;
        fill (#674E3D);
        ellipse(goomba.xPos, 360, 50, 15);
      }
    }
    if (xpos == 140) {
      xpos = xpos+(xspeed);
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
    }
    if (xpos2<280) {
      xpos2 = xpos2+(xspeed*xdirection);
      ypos2 = ypos2+(yspeed*ydirection2);
      if (ypos2>500) {
        xpos2 = random(140, 420);
        ypos2 = 0;
        crater = false;
      }
      if (ypos2>350 && abs(goomba.xPos-xpos2)<30) {
        crater = true;
        fill (#674E3D);
        ellipse (goomba.xPos, 360, 50, 15);
      }
    }
    if (xpos2>280) {
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
    }
    if (xpos2 == 280) {
      xpos2 = xpos2+(xspeed);
      ypos2 = ypos2+(yspeed*ydirection2);
      if (ypos2>500) {
        xpos2 = random(140, 420);
        ypos2 = 0;
        crater = false;
      }
      if (ypos2>350 && abs(goomba.xPos-xpos2)<30) {
        crater = true;
        fill (#674E3D);
        ellipse (goomba.xPos, 360, 50, 15);
      }
    }
    if (xpos3<420) {
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
    }
    if (xpos3>420) {
      xpos3 = xpos3+(xspeed*xdirection2);
      ypos3 = ypos3+(yspeed*ydirection2);
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
    }
    if (xpos3 == 420) {
      xpos3 = xpos3+(xspeed);
      ypos = ypos3+(yspeed*ydirection2);
      if (ypos3>500) {
        xpos3 = random(280, 560);
        ypos3 = 0;
        crater = false;
      }
      if (ypos3>350 && abs(goomba.xPos-xpos3)<30) {
        crater = true;
        fill (#674E3D);
        ellipse (goomba.xPos, 360, 50, 15);
      }
    }
    if (xpos4<560) {
      xpos4 = xpos4+(xspeed*xdirection);
      ypos4 = ypos4+(yspeed*ydirection);
      if (ypos4>500) {
        xpos4 = random(420, 650);
        ypos4 = 0;
        crater = false;
      }
      if (ypos>350 && abs(goomba.xPos-xpos4)<30) {
        crater = true;
        fill (#674E3D);
        ellipse (goomba.xPos, 360, 50, 15);
      }
    }
    if (xpos4>560) {
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
    if (xpos4 == 560) {
      xpos4 = xpos4+(xspeed);
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
  }
  void display() {
    if (xpos<140) {
      image(meteor, xpos, ypos, 30, 30);
    }
    if (xpos>140) {
      image(meteor2, xpos, ypos, 30, 30);
    }
    if (xpos2<280) {
      image(meteor, xpos2, ypos2, 30, 30);
    }
    if (xpos2>280) {
      image(meteor2, xpos2, ypos2, 30, 30);
    }
    if (xpos3<420) {
      image(meteor, xpos3, ypos3, 30, 30);
    }
    if (xpos3>420) {
      image(meteor2, xpos3, ypos3, 30, 30);
    }
    if (xpos4<560) {
      image(meteor, xpos4, xpos4, 30, 30);
    }
    if (xpos4>560) {
      image(meteor2, xpos4, ypos4, 30, 30);
    }
  }
}
