class Chaser {
  float posX, posY,targetX, targetY, spineX,spineY,sizeChaser, easeChaser;
  
  Chaser(float eC){
    posX = random(width);
    posY = random(height);
    targetX = target.posX;
    targetY = target.posY;
    spineX = random(width);
    spineY = random(height);
    sizeChaser = random(4)+8;
    easeChaser = eC;
  }
  
  void update(){
    if(diceHandler(1,0.999)){
    spineX = tween(spineX,target.oldPosX,easeChaser);
    spineY = tween(spineY,target.oldPosY,easeChaser);
    }
    posX =tween(posX,target.posX,easeChaser);
    posY =tween(posY,target.posY,easeChaser);
    if(hitDetect(posX,posY,sizeChaser/2,sizeChaser/2,target.posX,target.posY,target.sizeTarget/2,target.sizeTarget/2)){
    target.dotX = random(width);
    target.dotY = random(height);
    }
    drawChaser();
  }
  
  void drawChaser(){
    noFill();
    stroke(0,0,255,random(50)+20);
    ellipseMode(CENTER);
    ellipse(posX,posY,sizeChaser,sizeChaser);
    stroke(255);
    strokeWeight(2);
    point(spineX,spineY);
  }
  
}
