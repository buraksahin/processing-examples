static final int WIDTH = 500;
static final int HEIGHT = 500;

void setup(){
  size(500, 500); // Define size
  background(51, 52, 55);
}

void draw(){
  fill(random(150), random(50), random(150), random(155)+100);
  rect(random(WIDTH), HEIGHT * sin(random(360)), random(10) + 5, random(10) + 5);
}
