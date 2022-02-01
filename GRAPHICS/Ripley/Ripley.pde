color[] Colors = new color[6]; {
Colors[0] = color(129);    // dark gray
Colors[1] = color(190, 235, 255);    // sky blue
Colors[2] = color(185, 90, 10);    // reddish brown
Colors[3] = color(45, 205, 120);    // green
Colors[4] = color(30);    // near-black
Colors[5] = color(255);    // white
}

void setup() {
  size(700, 500);
  background(Colors[1]);
}

void draw() {
  strokeWeight(1);
  stroke(Colors[0]);
  fill(Colors[4]);
  quad(460, 280, 430, 340, 515, 360, 545, 300);    // neck

  triangle(205, 470, 210, 400, 240, 390);    // back hind leg
  triangle(530, 470, 490, 410, 520, 380);    // back front leg
  ellipse(350, 380, 400, 120);
  triangle(175, 490, 215, 400, 185, 385);    // fore hind leg
  triangle(525, 490, 500, 400, 460, 390);    // fore front leg
  
  ellipse(515, 245, 190, 115);    // head
  
  strokeWeight(5);
  stroke(Colors[5]);
  fill(Colors[2]);
  triangle(500, 250, 490, 270, 400, 280);    // left stache
  triangle(520, 250, 510, 270, 630, 280);    // left stache
  
  strokeWeight(25);
  stroke(Colors[3]);
  point(485, 220);
  point(545, 215);
  
  stroke(Colors[4]);
  noFill();
  bezier(30, 90, 75, 165, 200, 80, 185, 350);    // tail
  
  strokeWeight(1);
  stroke(Colors[0]);
  fill(Colors[4]);
  triangle(430, 200, 390, 310, 470, 240);    // left ear
  triangle(590, 220, 620, 200, 630, 260);
}
