//Tween movement.  start, end, ease (more = slower).
float tween(float v1, float v2, float e) {
  v1 += (v2-v1)/e;
  return v1;
}

//2D Hit Detect.  Assumes center.  x,y,w,h of object 1, x,y,w,h, of object 2.
boolean hitDetect(float x1, float y1, float w1, float h1, float x2, float y2, float w2, float h2) {
  w1 /= 2;
  h1 /= 2;
  w2 /= 2;
  h2 /= 2; 
  if(x1 + w1 >= x2 - w2 && x1 - w1 <= x2 + w2 && y1 + h1 >= y2 - h2 && y1 - h1 <= y2 + h2) {
    return true;
  } 
  else {
    return false;
  }
}

//Easy randomizer.  range,threshold
boolean diceHandler(float v1, float v2) {
  float rollDice;
  rollDice = random(v1);
  if(rollDice<v2) {
    return true;
  }
  else {
    return false;
  }
}
