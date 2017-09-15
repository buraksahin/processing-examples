color fillCol;
// Line starting points
int lastpointx = 0;
int lastpointy = 0;

void setup(){
  size(800,450);
  fillCol = color (255, 255, 255);
  background(0);
  smooth();
}

void draw(){
  fill(fillCol);
  strokeWeight(1);
  if(mousePressed == true){
    line(lastpointx, lastpointy, mouseX, mouseY);
  }
}

void mouseReleased() {
  lastpointx = mouseX;
  lastpointy = mouseY;
  stroke((int)random(255),(int)random(255),(int)random(255));
}

void keyPressed() {
  if(key == '1') {
    clear();
  }
}