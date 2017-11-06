int x = 0;
int startX = 300;
int startY = 600;
int endX = 300;
int endY = 0;
void setup() {
  size(600, 600);
}
void draw() {
  stroke(0);
  for(int y = 0; y < 10; y++){
    while (endX<600) {
      endX = startX + (int)(Math.random()*50-25);
      endY = startY - (int)(Math.random()*25);
      fill((int)(Math.random()*255-1),(int)(Math.random()*255-1),(int)(Math.random()*255-1));
      ellipse(startX, startY, 10, 10);
      startX = endX;
      startY = endY;
    }
  }  
  x = (int)(Math.random()*100-50);
}
void mousePressed() {
  startX = 300+x;
  startY = 600;
  endX = 300;
  endY = 0;
}
