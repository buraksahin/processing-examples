// Keep all balls into list
ArrayList<Ball> arr = new ArrayList<Ball>();

void setup(){
  background(50);
  size(500, 500);
}

// Mouse click event
void mouseClicked(){
  int randSize = (int)random(20, 50);                 // Size of the ball
  arr.add(new Ball(random(width), mouseY, randSize)); // Set a random position
  arr.add(new Ball(mouseX, mouseY, randSize));
}

void draw(){
  background(255);
  for(int i = 0; i < arr.size(); i++){
    Ball tempBall = arr.get(i);
    tempBall.applyPhysics();
    tempBall.drawBall();
  }
}

/*
 *  Ball
 */
class Ball{
  float xPos;     // Ball x-postiion
  float yPos;     // Ball y-position
  int r;          // Ball radius
  float a = 0;    // Ball acceleration
  float g = 0.1;  // Ball gravity
  
  public Ball(float x, float y, int r){
    this.xPos = x;
    this.yPos = y;
    this.r = r;
  }
  
  // Calculate ball position
  public void applyPhysics(){
    a = a + g;
    yPos = yPos + a;
    if (yPos > height - r / 2) {
      a = a * random(-.6, -.4);
      yPos = height - r / 2;
    }
  }
  
  // Draw ball to frame
  public void drawBall(){
    fill(random(255), random(100), random(50));
    circle(xPos, yPos, r);
  }
}
