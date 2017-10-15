class Ball{
  
  int size;
  PVector location, velocity;

  Ball() {
    size = int(random(10, 40));
    location = new PVector(0, 0);
    velocity = new PVector(random(-3, 3), random(-3, 3));
    velocity.normalize();
  }

  void move() {
    location.add(velocity);
    if (location.x < -width/2 + size/2 || location.x > width/2-size/2) 
      velocity.x *= -1;

    if (location.y < -height/2 + size/2 || location.y > height/2-size/2) 
      velocity.y *= -1;
  }

  void display() {
    fill(255);
    ellipse(location.x, location.y, size, size);
  }
}