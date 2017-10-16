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
    float k=0.1;
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

    stroke(curLen);
    int w = round(200/curLen);
    if(w>10) w =10;
    strokeWeight(w);
    line(origin.x, origin.y, loc.x, loc.y);

    noStroke();
    fill(0);
    ellipse(loc.x, loc.y, 20, 20);

  }
}