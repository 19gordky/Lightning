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
      endX = startX + (int)(Math.random()*18-9);
      endY = startY - (int)(Math.random()*10);
      ellipse(startX, startY, endX, endY);
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
  x+=10;
}
