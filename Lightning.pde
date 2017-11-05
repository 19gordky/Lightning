int x = 100;
int y = 100;
int startX = 0;
int startY = 300;
int endX = 0;
int endY = y;
void setup() {
  size(600, 600);
}
void draw() {
  stroke((int)(Math.random()*255+1), (int)(Math.random()*255+1), (int)(Math.random()*255+1));
  while (endX<600) {
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*18-9);
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
  }
}
void mousePressed(){
  startX = 0+x;
  startY = 300;
  endX = 0;
  endY = 300;
}
