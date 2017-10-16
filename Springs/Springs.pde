Spring s;

void setup()  {
  size(640,480);
  s = new Spring(new PVector(width/2,200));
}

void draw()  {
  background(255);
  
  // //Drag = -1/2 * rho * ||v||^2 * Area * Cd * vcap
  //  PVector drag = s.vel.get();
  //  drag.normalize();
  //  float rho = -0.01;
  //  float speed = s.vel.mag();
  //  drag.mult( rho * speed * speed);
  //  s.applyForce(drag);
  
  //s.applyForce(drag);
  s.update();
  s.display();
  
}