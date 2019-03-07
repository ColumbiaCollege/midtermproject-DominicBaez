//identifier for the xpos projectile object
class rock {
  //variables 
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

//constructor
  rock() {
    // loads two images, and depending on the location determines which will be displayed
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
  //methods
  void move() {
    // if the first meteor loads on the xposition and is lower than 140 then it will move left
    if (xpos<140) {
      //equation used to allow movement for left
      xpos = xpos+(xspeed*xdirection);
      ypos = ypos+(yspeed*ydirection);
      //if statement where if the meteor passes the height, then it will respawn back on top of the screen in a randomized location
      if (ypos>500) {
        xpos = random(50, 280);
        ypos = 0;
        crater = false;
      }
      // if statement where if the meteor passes the set yposition and meets with the goomba then the crater boolean becomes true
      if (ypos>350 && abs(goomba.xPos-xpos)<30) {
        crater = true;
        fill (#674E3D);
        ellipse(goomba.xPos, 360, 50, 15);
      }
    }//if the first meteor loads on the xposition and is more than 140 then it will move right 
    if (xpos>140) {
      //equation used to allow the meteor to move right
      xpos = xpos+(xspeed*xdirection2);
      ypos = ypos+(yspeed*ydirection2);
      //if statement that resets the meteor at a random xposition
      if (ypos>500) {
        xpos = random (50, 280);
        ypos = 0;
        crater = false;
      }
      //if statement that turns the crater boolean true if the conditions are met
      if (ypos>350 && abs(goomba.xPos-xpos)<30) {
        crater = true;
        fill (#674E3D);
        ellipse(goomba.xPos, 360, 50, 15);
      }
    }
    // if the first meteor loads on the xpos and is 140 then it will move down
    if (xpos == 140) {
      //equations used to allow the meteor to move down
      xpos = xpos*xspeed;
      ypos = ypos+(yspeed*ydirection);
      //if statement that respawns the meteor at random xpositions
      if (ypos>500) {
        xpos = random(50, 280);
        ypos = 0;
        crater = false;
      }
      //if statement that turns the crater boolean true if the conditions are met
      if (ypos>350 && abs(goomba.xPos-xpos)<30) {
        crater = true;
        fill (#674E3D);
        ellipse(goomba.xPos, 360, 50, 15);
      }
    }
    // if the second meteor loads on the xpos and is less than 280 then it will move left
    if (xpos2<280) {
      //equations that allow the meteor to move left
      xpos2 = xpos2+(xspeed*xdirection);
      ypos2 = ypos2+(yspeed*ydirection2);
      //if statement that respawns the meteor at a random xposition
      if (ypos2>500) {
        xpos2 = random(140, 420);
        ypos2 = 0;
        crater = false;
      }
      //if statement that turns the crater boolean true if the conditions are met
      if (ypos2>350 && abs(goomba.xPos-xpos2)<30) {
        crater = true;
        fill (#674E3D);
        ellipse (goomba.xPos, 360, 50, 15);
      }
    }
    //if the second meteor loads on the xpos and is greater than 280 then the meteor will move right
    if (xpos2>280) {
      //equations
      xpos2 = xpos2+(xspeed*xdirection2);
      ypos2 = ypos2+(yspeed*ydirection2);
      if (ypos2>500) {
        //respawn if statement
        xpos2 = random(140, 420);
        ypos2 = 0;
        crater = false;
      }
      //if statement that turns crater boolean true
      if (ypos2>350 && abs(goomba.xPos-xpos2)<30) {
        crater = true;
        fill (#674E3D);
        ellipse(goomba.xPos, 360, 50, 15);
      }
    }
    // if the second meteor loads on the xpos and is 280 then it will move down
    if (xpos2 == 280) {
      //equations
      xpos2 = xpos2*xspeed;
      ypos2 = ypos2+(yspeed*ydirection2);
      //respawn if statement
      if (ypos2>500) {
        xpos2 = random(140, 420);
        ypos2 = 0;
        crater = false;
      }
      // if statement that turns the crater boolean true
      if (ypos2>350 && abs(goomba.xPos-xpos2)<30) {
        crater = true;
        fill (#674E3D);
        ellipse (goomba.xPos, 360, 50, 15);
      }
    }
    //if the third meteor loads on the xpos and is less than 420 it will go left
    if (xpos3<420) {
      //equations
      xpos3 = xpos3+(xspeed*xdirection);
      ypos3 = ypos3+(yspeed*ydirection);
      //respawn if statement
      if (ypos3>500) {
        xpos3 = random(280, 560);
        ypos3 = 0;
        crater = false;
      }
      //if statement that turns crater boolean true if conditions are met
      if (ypos3>350 && abs(goomba.xPos-xpos3)<30) {
        crater = true;
        fill (#674E3D);
        ellipse(goomba.xPos, 360, 50, 15);
      }
    }
    //if third meteor is on the xpos and is greater than 420 then it will move right
    if (xpos3>420) {
      //equations
      xpos3 = xpos3+(xspeed*xdirection2);
      ypos3 = ypos3+(yspeed*ydirection2);
      //respawn if statement
      if (ypos3>500) {
        xpos3 = random(280, 560);
        ypos3 = 0;
        crater = false;
      }
      //if statement that turns crater boolean true if conditions are met
      if (ypos3>350 && abs(goomba.xPos-xpos3)<30) {
        crater = true;
        fill (#674E3D);
        ellipse(goomba.xPos, 360, 50, 15);
      }
    }
    //if the third meteor is on the xpos and is equal to 420 then the meteor will move down
    if (xpos3 == 420) {
      //equations
      xpos3 = xpos*xspeed;
      ypos = ypos3+(yspeed*ydirection2);
      //respawn if statement
      if (ypos3>500) {
        xpos3 = random(280, 560);
        ypos3 = 0;
        crater = false;
      }
      //if statement that turns the crater boolean true if the conditions are met
      if (ypos3>350 && abs(goomba.xPos-xpos3)<30) {
        crater = true;
        fill (#674E3D);
        ellipse (goomba.xPos, 360, 50, 15);
      }
    }
    //if the fourth meteor is on the xpos and is less than 560 then it will go left
    if (xpos4<560) {
      //equations
      xpos4 = xpos4+(xspeed*xdirection);
      ypos4 = ypos4+(yspeed*ydirection);
      //respawn if statement
      if (ypos4>500) {
        xpos4 = random(420, 650);
        ypos4 = 0;
        crater = false;
      }
      //if statement that turns the crater boolean true if the conditions are met
      if (ypos>350 && abs(goomba.xPos-xpos4)<30) {
        crater = true;
        fill (#674E3D);
        ellipse (goomba.xPos, 360, 50, 15);
      }
    }
    //if the fourth meteor is on the xpos and is greater than 560 then the meteor will go right
    if (xpos4>560) {
      //equations
      xpos4 = xpos4+(xspeed*xdirection2);
      ypos4 = ypos4+(yspeed*ydirection2);
      //respawn if statement
      if (ypos4>500) {
        xpos4 = random(420, 650);
        ypos4 = 0;
        crater = false;
      }
      //if statement that turns the crater boolean true if the conditions are met
      if (ypos4>350 && abs(goomba.xPos-xpos4)<30) {
        crater = true;
        fill (#674E3D);
        ellipse(goomba.xPos, 360, 50, 15);
      }
    }
    // if the fourth meteor is on the xpos and is equal to 560 then the meteor will go down
    if (xpos4 == 560) {
      //equations
      xpos4 = xpos4*xspeed;
      ypos4 = ypos4+(yspeed*ydirection2);
      //respawn if statement
      if (ypos4>500) {
        xpos4 = random(420, 650);
        ypos4 = 0;
        crater = false;
      }
      // if statemtent that turns the crater boolean true if the conditions are met
      if (ypos4>350 && abs(goomba.xPos-xpos4)<30) {
        crater = true;
        fill (#674E3D);
        ellipse(goomba.xPos, 360, 50, 15);
      }
    }
  }
  //method that displays the object 
  void display() {
    //if xpos is less than 140 then it will display a meteor 
    if (xpos<140) {
      image(meteor, xpos, ypos, 30, 30);
    }
    // if xpos is greater than 140 then it will display a different meteor
    if (xpos>140) {
      image(meteor2, xpos, ypos, 30, 30);
    }
    //if xpos2 is less than 280 then it will display the first meteor
    if (xpos2<280) {
      image(meteor, xpos2, ypos2, 30, 30);
    }
    //if xpos2 is greater than 280 then it will diplay the second meteor
    if (xpos2>280) {
      image(meteor2, xpos2, ypos2, 30, 30);
    }
    //if xpos3 is less than 420 then it will dipslay the first meteor
    if (xpos3<420) {
      image(meteor, xpos3, ypos3, 30, 30);
    }
    //if xpos3 is greater than 420 then it will display the second meteor
    if (xpos3>420) {
      image(meteor2, xpos3, ypos3, 30, 30);
    }
    // if xpos4 is less than 560 then it will display the first meteor
    if (xpos4<560) {
      image(meteor, xpos4, xpos4, 30, 30);
    }
    //if xpos4 is greater than 560 then it will display the second meteor
    if (xpos4>560) {
      image(meteor2, xpos4, ypos4, 30, 30);
    }
  }
}
