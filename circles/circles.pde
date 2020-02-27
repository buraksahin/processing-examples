static final int WIDTH = 500;
static final int HEIGHT = 500;

void setup(){
  size(500, 500);
  background(51, 52, 55);
}

void draw(){
  fill(random(150), random(50), random(150), random(155)+100);
  circle(random(WIDTH), random(HEIGHT), random(10) + 5);
}
