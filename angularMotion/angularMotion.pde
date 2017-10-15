int count;
ArrayList<Ball> b;

void setup() {
  size(1280, 720);
  b = new ArrayList<Ball>();
}

void draw() {
  background(255);
  
  
  for (Ball b:b) {
    b.moveToLoc(new PVector(random(width/4,width*3/4),random(height/4,height*3/4)));
    b.display();
  }
  
}

void mousePressed() {
  b.add(new Ball());
}