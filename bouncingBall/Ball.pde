class Ball{
  
  int size;
  PVector location, velocity;

  Ball() {
    size = int(random(10, 40));
    location = new PVector(width/2, height/2);
    velocity = new PVector(random(-1, 1), random(-1, 1));
  }

  void move() {
    location.add(velocity);
    if (location.x < size || location.x > width-size) 
      velocity.x *= -1;

    if (location.y < size || location.y > height-size) 
      velocity.y *= -1;
  }

  void display() {
    fill(255);
    ellipse(location.x, location.y, size, size);
  }
}