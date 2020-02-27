Box b = new Box(20, 20);
boolean isGoingRight = true;
boolean isGoingDown = true;

void setup(){
  background(50);
  size(500, 500);
}

void mouseClicked(){
  fill(random(255), random(255), random(255));
  rect(mouseX, mouseY, 15, 15);
}

void draw(){
  for(; b.yPos <= 480 && b.yPos >= 0; ){
    for(; b.xPos <= 480 && b.xPos >= 0 && isGoingDown; ){
      b.drawRect();
      if(isGoingRight){
        b.increaseXPos(20);
      }
      else{
        b.decreaseXPos(20);
      }
    }

    if(b.xPos == 500){
      b.decreaseXPos(20);
      b.increaseYPos(20);
    }
    
    if(!isGoingDown){
      b.decreaseYPos(20);
      b.drawRect();
    }
    
    if(b.xPos == -20 && b.yPos == 480){ b.increaseXPos(20); isGoingDown = false; }
    
    if(b.yPos == 500){
      b.decreaseYPos(20);
      isGoingRight = false;
    }
  }// end of the for loop
}

class Box{
 int xPos;
 int yPos;
 int rectWidth;
 int rectHeight;
 
  public Box(int w, int h){
    rectWidth = w;
    rectHeight = h;
  }
  
  public void increaseYPos(int y){
    yPos = yPos + y;
  }
  
  public void increaseXPos(int x){
    xPos = xPos + x;
  }
  
  public void decreaseYPos(int y){
    yPos = yPos - y;
  }
  
  public void decreaseXPos(int x){
    xPos = xPos - x;
  }
  
  public void drawRect(){
    fill(random(255), random(100), random(50));
    rect(xPos, yPos, rectWidth, rectHeight);
  }
}
