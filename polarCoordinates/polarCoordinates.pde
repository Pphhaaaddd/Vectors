float r = 30;
float a = PI/4;
float aVel=0,aAcc=0.01;

void setup() {
  size(640, 480);
  background(0);
}

void draw() {
  background(05);
  translate(width/2, height/2);
  float x=r * cos(a);
  float y=r * sin(a);
  a += aVel;
  aVel += aAcc;
  fill(127);
  stroke(127);
  line(0, 0, x, y);
  noStroke();
  ellipse(x, y, 30, 30);
}