class Star {
  float x;
  float y;
  float z;
  float zPrev;
  
  int R = (int)random(0, 255);
  int G = (int)random(0, 255);
  int B = (int)random(0, 255);
  
  Star() {
   x = random(-width/2, width/2);
   y = random(-height/2, height/2);
   z = random(width/2);
   zPrev = z;
  }
  
  void upate() {
   z = z - speed;
   if (z < 1) {
    z = width/2;
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    zPrev = z;
   }
  }
  
  void show() {
   fill(0);    // make the sphere 'invisible' against the black background
   noStroke();
   
   float sx = map(x/z, 0, 1, 0, width/2);
   float sy = map(y/z, 0, 1, 0, height/2);
   
   float r = map(z, 0, width/2, 16, 0);
   ellipse(sx, sy, r, r);
   
   float xPrev = map(x/zPrev, 0, 1, 0, width/2);
   float yPrev = map(y/zPrev, 0, 1, 0, height/2);
   
   zPrev = z;
   
   stroke(R, G, B);
   line(xPrev, yPrev, sx, sy);
  }
}
