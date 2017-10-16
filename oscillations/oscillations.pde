ArrayList<Pendullum> p;
Pendullum p2=new Pendullum();

void setup() {
  size(640, 480);
  p = new ArrayList<Pendullum>();
}

void draw() {
  background(255);
  for (Pendullum p : p) {
    p.update();
    p.display();
  }
}

void mousePressed() {
  for(int i=0;i<200;i++)
  p.add(new Pendullum());
}