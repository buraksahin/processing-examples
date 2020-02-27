
void setup(){
  background(0);
  size(500, 500); // Define size
}  
  
void draw(){
background(random(50), random(50), random(50));
  for(int y = 0; y < height; y = y + 20){
      for(int x = 0; x < width; x = x + 20){
        strokeWeight(random(0, 2.5));
        fill(random(100, 255), random(100, 255), random(100, 255), 5);
        stroke(random(100, 255), random(100, 255), random(100, 255));
        rect(x, y, 20, 20);
      }
    }
   delay(150);
}
