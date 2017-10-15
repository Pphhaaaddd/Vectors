ArrayList<Ball> b;

void setup() {
  size(640, 480);
  
  b = new ArrayList<Ball>();
}

void draw() {
  background(0);
  translate(width/2,height/2);
  for (Ball b : b) {
    b.move();
    b.display();
  }
}

void mousePressed() {
  b.add(new Ball()); 
  
}