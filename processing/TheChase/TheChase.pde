import processing.opengl.*;

Target target;
Snake snake;
PImage starfield;
int counter = 0;
int counterSeed = 300;
int counterMax = counterSeed;
boolean targetTop = false;

void setup() {
  size(640,480,P2D);
  frameRate(60);
  target = new Target();
makeStarfield(0.002);
snake = new Snake(20,50,150,1000,true);  //length, density, size, friction, headfirst
}

void draw() {
  image(starfield,0,0);
  counter++;
  if(counter>counterMax){
    counter=0;
    counterMax = int(random(counterSeed));
    if(targetTop){
      targetTop=false;
    }else if(!targetTop){
    targetTop=true;
    }
  }
  if(targetTop){
snake.update();
target.update();
  }else{
      target.update();
snake.update();
  }
}

void makeStarfield(float chanceOfStars){
    starfield = createImage(width,height,RGB);
  for(int j=0;j<starfield.pixels.length;j++){
  if(diceHandler(1,chanceOfStars)){
  starfield.pixels[j] = color(random(50)+10);
  }else{
  starfield.pixels[j]=color(0);
  }
  }
}

