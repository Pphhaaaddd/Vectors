class Ball {

  int size;
  PVector location, velocity, acceleration;

  Ball() {
    size = int(random(10, 40));
    location = new PVector(random(0,width), random(0,height));
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  void moveToLoc(PVector loc) {

    loc.sub(location);
    loc.setMag(size/100);
    acceleration = loc;

    velocity.add(acceleration);
    location.add(velocity);
  }

  void display() {
    fill(255);
    ellipse(location.x, location.y, size, size);
  }
}