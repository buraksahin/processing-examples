static final int WIDTH = 500;
static final int HEIGHT = 500;

MyBox kutu1 = new MyBox(50, 150, 0, 0);
MyBox kutu2 = new MyBox(50, 150, 0, HEIGHT - 50);
MyBox kutu3 = new MyBox(80, 80);

void setup(){
size(500, 500); // Define size
}

void draw(){
  //background(150, 120, 100);
  kutu3.printBox(255, 5, 5, mouseY, mouseX, 10, 10);
}

class MyBox{
  int sizeH = 0;
  int sizeW = 0;
  int posX = 0;
  int posY = 0;
  
  public MyBox(int sizeH, int sizeW){
    this.sizeH = sizeH;
    this.sizeW = sizeW;
  }
  
  public MyBox(int h, int w, int x, int y){
    sizeH = h;
    sizeW = w;
    posX = x;
    posY = y;
  }
  
  public void printBox(){
    fill(200, 0, 0);
    rect(posX,posY,sizeW,sizeH);
  }
  
  public void printBox( int r , int g , int b, float y, float x, int sizew, int sizeh){
   fill(r, g, b);
   rect(x - sizeh/2, y - sizew/2, sizew, sizeh);
  }
}
