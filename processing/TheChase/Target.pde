class Target {
  float posX, posY,  oldPosX, oldPosY, targetX, targetY, dotX, dotY, sizeTarget,easeTarget,deg;

  Target() {
    dotX = random(width);
    dotY = random(height);
    posX = random(width);
    posY = random(height);
    targetX = posX;
    targetY = posY;
    oldPosX = posX;
    oldPosY = posY;
    sizeTarget = 10;
    easeTarget = 15;
    deg=0;
  }

  void update() {
    oldPosX = posX;
    oldPosY = posY;
    targetX =tween(targetX,dotX,easeTarget/1.5);
    targetY =tween(targetY,dotY,easeTarget/1.5);
    posX =tween(posX,targetX,easeTarget);
    posY =tween(posY,targetY,easeTarget);
    if(hitDetect(posX,posY,sizeTarget/2,sizeTarget/2,targetX,targetY,sizeTarget/2,sizeTarget/2)) {
      dotX = random(width);
      dotY = random(height);
    }
    if(mousePressed) {
      dotX = mouseX;
      dotY = mouseY;
    }
    drawTarget();
  }

  void drawTarget() {
    noFill();
    stroke(255,0,0,200);
    strokeWeight(2);
    pushMatrix();
    translate(posX,posY);
    rotate(radians(deg));
    if(oldPosX<posX) {
      deg-=10;
    }
    else {
      deg+=10;
    }
    line(0,sizeTarget,0,-1*sizeTarget);
    line(sizeTarget,0,-1*sizeTarget,0);
    popMatrix();
    if(mousePressed) {
      point(targetX,targetY);
      stroke(255,0,0,random(50)+10);
      strokeWeight(1);
      line(posX,posY,targetX,targetY);
    }
  }
}

