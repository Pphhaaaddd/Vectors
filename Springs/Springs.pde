Spring s;
Spring s2;

void setup()  {
  size(640,480);
  s = new Spring(new PVector(width/2,400));
  s2 = new Spring(s.getLoc());
}

void draw()  {
  background(255);
  
  s.applyDragForce(0.01);
  
  //Wind
  if(mousePressed){
  s.applyForce(new PVector(1,0));
  s2.applyForce(new PVector(1,0));
  }
  
  //Gravity
  s.applyForce(new PVector(0,4));
  s2.applyForce(new PVector(0,4));
  

  s.update();
  s.display();
  s2.updateOrigin(s.getLoc());
  s2.update();
  s2.display();
  
}