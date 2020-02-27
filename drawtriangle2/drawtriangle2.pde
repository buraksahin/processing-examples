color fillCol;
int lastpointx,lastpointy;
int t_x1, t_x2, t_x3, t_y1, t_y2, t_y3;
boolean t_triangle = false;
int p_triangle = 0;

void setup(){
  size(800,450);
  fillCol = color (255, 255, 255);
  background(0);
  smooth();
}

void draw(){
  fill(fillCol);
  strokeWeight(1);
  if(t_triangle){
    fill((int)random(255), (int)random(255), (int)random(255));
    stroke((int)random(255), (int)random(255), (int)random(255));
    triangle(t_x1, t_y1, t_x2, t_y2, t_x3, t_y3);
    t_triangle = false;
  }
}

void mouseReleased() {
  stroke((int)random(255), (int)random(255), (int)random(255));
  strokeWeight(7);
  point(mouseX, mouseY);
  switch(p_triangle){
    case 0: 
      t_x1 = mouseX;
      t_y1 = mouseY;
      p_triangle++;
      println("case1 " + mouseX + " " + mouseY);
      break;
    case 1: 
      t_x2 = mouseX;
      t_y2 = mouseY;
      p_triangle++;
      println("case2 " + mouseX + " " + mouseY);
      break;
    case 2: 
      t_x3 = mouseX;
      t_y3 = mouseY;
      p_triangle=0;
      t_triangle = true;
      println("case3 " + mouseX + " " + mouseY);
      break;
    default:
      break;
  }
}

void keyPressed() {
  if(key == '1') {
    clear();
  }
}
