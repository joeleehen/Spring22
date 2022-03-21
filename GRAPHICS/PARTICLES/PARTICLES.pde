Particle prt;

void setup() {
 size(500, 500); 
 background(0);
 prt = new Particle(20, 20, 0.03, 0, 2);
}

void draw() {
  background(0);
 prt.applyForces(0.03, 0.01);
 prt.display();
 prt.respawner();
}
