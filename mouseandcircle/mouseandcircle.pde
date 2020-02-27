static final int WIDTH = 500;
static final int HEIGHT = 500;
float x = 0;

void setup(){
  size(500, 500); // Define size
}

void draw(){
  background(51, 52, 55);
  x = 0;
  while(x < width){
    
    if(mouseX < 10){
      x = x + 20;
    }
    else{
      x = x + mouseX;
    }
    fill(101);
    stroke(255);
    line(x, 0, x, HEIGHT);
    circle(x, mouseY * sin(x % 360), 16);
    println(mouseX);
  }
}
