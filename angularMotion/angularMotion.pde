
void setup() {
  size(1280,720);
  background(0);
}

void draw() {
  pushMatrix();
  
  fill(127);
  noStroke();
  translate(width/2,height/2);
  rectMode(CENTER);
  rotate(radians(45));
  rect(0,0,50,70);
   
  popMatrix();
}