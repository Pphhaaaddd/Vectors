Ball b;

void setup() {
  size(640, 480);

  b = new Ball();
}

void draw() {
  background(0);
  b.move();
  b.display();
}