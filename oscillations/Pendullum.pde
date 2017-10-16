class Pendullum {

  PVector origin;
  PVector bob;
  float aVel =0, aAcc=0;
  float len, size = 20;
  float angle = 0;

  Pendullum() {
    origin = new PVector(width/2, 70);
    len = random(40, 400);
    angle =PI /5 ;
  }

  void update() {
    aAcc = -0.1/len * sin(angle);
    aVel +=aAcc;    
    angle += aVel;

    bob = new PVector( len * sin(angle), len * cos(angle));
  }

  void display() {
    pushMatrix();
    translate(origin.x, origin.y);
    stroke(0,127);
    line(0, 0, bob.x, bob.y);
    fill(127,127);
    noStroke();
    ellipse(bob.x, bob.y, size, size);
    popMatrix();
  }
}