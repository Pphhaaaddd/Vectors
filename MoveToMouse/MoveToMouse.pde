ArrayList<Ball> b;

void setup() {
  size(1280, 720);

  b = new ArrayList<Ball>();
}

void draw() {
  background(255);
  //translate(width/2, height/2);
  for (Ball b : b) {

    PVector g = new PVector(0, 0.1);
    PVector w = new PVector(-0.1, 0);

    //b.moveToLoc(new PVector(0,0));
    g.mult(b.mass);
    b.applyForce(g); //Gravity

    //if(keyPressed)
    //b.applyForce(w); //Wind

    //Friction
    //PVector friction = b.velocity.get();
    //friction.normalize();
    //float c = 0.05;
    //friction.mult(-1*c);
    //b.applyForce(friction);
    
    //Drag = -1/2 * rho * ||v||^2 * Area * Cd * vcap
    PVector drag = b.velocity.get();
    drag.normalize();
    float rho = -0.01;
    float speed = b.velocity.mag();
    drag.mult( rho * speed * speed);
    b.applyForce(drag);

    b.bindItInScreen();
    b.update();
    b.display();
  }
  
}

void mousePressed() {
  b.add(new Ball());
}