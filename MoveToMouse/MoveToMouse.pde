ArrayList<Ball> b;

void setup() {
  size(1280, 720);

  b = new ArrayList<Ball>();
}

void draw() {
  background(255);
  //translate(width/2, height/2);
  
  for (Ball b:b) {
    b.moveToLoc(new PVector(mouseX,mouseY));
    b.display();
  }
}

void mousePressed() {
  b.add(new Ball());
}