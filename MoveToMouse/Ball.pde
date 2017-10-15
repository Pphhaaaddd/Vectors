class Ball {

  float size, mass;
  PVector location, velocity, acceleration;
  color c;


  Ball() {
    size = int(random(20, 30));
    location = new PVector(random(0, width), random(0, height));
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    mass = size*size*size/10000;
    c = color(random(0, 255), random(0, 255), random(0, 255));
  }

  void moveToLoc(PVector loc) {

    loc.sub(location);
    loc.setMag(size/40);
    acceleration = loc;
    velocity.limit(20);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  // Newton's second law of motion
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }

  void bindItInScreen() {
    if (location.x > width-size/2)
    { 
      velocity.x *= -1;
      location.x = width-size/2;
    } else if ( location.x < size/2)
    { 
      velocity.x *= -1;
      location.x = size/2;
    }

    if (location.y > height-size/2)
    { 
      velocity.y *= -1;
      location.y = height-size/2;
    } else if ( location.y < size/2)
    { 
      velocity.y *= -1;
      location.y = size/2;
    }

    if (abs(velocity.x) < 0.000001)
      velocity.x=0;

    if (abs(velocity.y) < 0.000001)
      velocity.y=0;
  }

  void display() {
    fill(c, 160);
    noStroke();
    ellipse(location.x, location.y, size, size);
  }
}