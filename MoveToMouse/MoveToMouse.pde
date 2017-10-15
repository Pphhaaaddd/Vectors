ArrayList<Ball> b;

void setup() {
  size(1280, 720);

  b = new ArrayList<Ball>();
}

void draw() {
  background(255);
  //translate(width/2, height/2);
  
  for (Ball b:b) {
    
    PVector g = new PVector(0,0.1);
    PVector w = new PVector(-0.1,0);
    
    //b.moveToLoc(new PVector(0,0));
    b.applyForce(g); //Gravity
    
    if(keyPressed)
    b.applyForce(w); //Wind
    
    b.bindItInScreen();
    b.update();
    b.display();
  }
}

void mousePressed() {
  b.add(new Ball());
}