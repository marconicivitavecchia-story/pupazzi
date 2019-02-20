int x=3 ;
float y;
int xStep=6;
int yStep=6;
void setup() {
  fullScreen(P3D);
  y = height * 0.8;
}
void draw() {
  background(255, 255, 255);
  fill(#FF7E0D);
  rect(0, 0, width, 100);
  fill(random(255), random(255), random(255));
  rect(x, y, 50, 50);
  
  // Manage x
  x = x + xStep;
  
  if (x>=width-200) {
    x = x - xStep;
  }
  
  // Manage y
  
  yStep = 0;
  // user press on the lower side
  if (mousePressed) {
    if (mouseY>height/2) {
      yStep = -6 ;
    }
  }
  
  // user press on the upper side of the screen
  if (mousePressed) {
    if (mouseY<height/2) {
      yStep = 6 ;
    }
  }
  
  if(y<100 && x>0){
    yStep = 0 ;
  }
  
  y = y + yStep;
  
  
  
  
}
