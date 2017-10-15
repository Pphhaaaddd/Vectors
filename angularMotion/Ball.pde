class Ball {

  int size, mass;
  PVector location, velocity, acceleration;
  float a =0.0, aVelocity = 0.0, aAcceleration = 0.001;
  color c = color(random(0, 255), random(0, 255), random(0, 255));

  Ball() {
    size = int(random(10, 40));
    location = new PVector(random(0, width), random(0, height));
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    mass = size*size*size;
  }

  void moveToLoc(PVector loc) {

    loc.sub(location);
    loc.setMag(2);
    acceleration = loc;

    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(35);

    if (aVelocity < 1) 
      aVelocity += aAcceleration;

    a += aVelocity;
  }

  void display() {
    fill(c, 170);
    noStroke();
    pushMatrix();
    translate(location.x, location.y);
    rotate(a);  
    rectMode(CENTER);
    rect(0, 0, size, size);
    popMatrix();
  }
}