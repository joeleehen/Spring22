class Particle {
 PVector pos;
 PVector vel;
 float r;
 
 Particle(float x, float y, float vx, float vy, float r) {
  pos = new PVector(x, y); 
  vel = new PVector(vx, vy);
  this.r = r;
 }
 
 void applyForces(float fx, float fy) {
  vel.x += fx;
  vel.y += fy;
  pos.x += vel.x;
  pos.y += vel.y;
 }
 
 void display() {
  ellipse(pos.x, pos.y, r, r); 
 }
 
 void respawner() {
  if (pos.x > width) {
   pos.x = 0;
  }
  if (pos.y > height) {
   pos.y = 0; 
  }
 }
}
