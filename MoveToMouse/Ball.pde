class Ball {

  float size;
  PVector location, velocity, acceleration;
  color c;

  Ball() {
    size = int(random(20, 60));
    location = new PVector(random(0,width), random(0,height));
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    
    c = color(random(0,255),random(0,255),random(0,255));
  }

  void moveToLoc(PVector loc) {

    loc.sub(location);
    loc.setMag(40/size);
    acceleration = loc;

    velocity.limit(10);
    velocity.add(acceleration);
    location.add(velocity);
    
  }

  void display() {
    fill(c,127);
    noStroke();
    ellipse(location.x, location.y, size, size);
  }
}