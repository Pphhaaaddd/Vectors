class Spring {
  float restLen;
  float curLen;
  PVector origin, loc;
  PVector vel, acc;

  Spring(PVector loc_) {
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    origin = new PVector(width/2, 0);
    loc = loc_;
    restLen = 100;
  }

  void update() {

    //Spring action
    PVector dir = PVector.sub(loc, origin);
    curLen = dist(origin.x, origin.y, loc.x, loc.y);
    dir.normalize();
    float k=0.03;
    float stretch = curLen - restLen;
    dir.mult(-k*stretch);
    applyForce(dir);

    vel.add(acc);
    loc.add(vel);

    //Remove acceleration after every iteration
    acc.mult(0);
  }
  void applyForce(PVector dir) {     
    //updating
    acc.add(dir);
  }

  void display() {
    stroke(0);
    strokeWeight(1);
    line(origin.x, origin.y, loc.x, loc.y);

    noStroke();
    fill(0);
    ellipse(loc.x, loc.y, 20, 20);
  }

  void applyDragForce(float rho) {
    //applies a drag for with constant rho
    //Drag = -1/2 * rho * ||v||^2 * Area * Cd * vcap
    PVector drag = s.vel.get();
    drag.normalize();

    float speed = s.vel.mag();
    drag.mult( -1 * rho * speed * speed);
    s.applyForce(drag);
  }

  PVector getLoc() {
    return loc;
  }

  void updateOrigin(PVector origin_) {
    origin = origin_;
  }
}