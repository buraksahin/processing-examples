static final int WIDTH = 500;
static final int HEIGHT = 500;
float loopCounter = 0;
boolean isIncreasing = true;

void setup(){
  size(500, 500); // Define size
}

void draw(){
  background(100, 80, 100);
  int x = 0;
  int y = HEIGHT;
  while(x <= loopCounter){
    stroke(255);
    fill(0, random(100,255), 200);
    rect(x, 0, 20, HEIGHT);
    x += 40;
    
    fill(0, random(100,255), 200);
    rect(0, y, WIDTH, 20);
    y -= 40;
  }
 
  if(isIncreasing){
      loopCounter += 5;
  }
  else{
    loopCounter -= 5;
  }  
  if(x > WIDTH){
    isIncreasing = false;
  }
  if(x <= 0){
    isIncreasing = true;
  }
}
