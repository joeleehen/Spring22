void setup() {
 size(500, 500);
 background(170, 230, 240);
 strokeWeight(5);
 stroke(190, 185, 120);
 fill(110, 150, 190);
 ellipse(180, 155, 40, 40);    // eyes
 ellipse(320, 155, 40, 40);
 
 strokeWeight(2);
 fill(240, 240, 170);
 ellipse(250, 250, 200, 200);    // body
 rect(110, 310, 70, 30);    // feet
 rect(320, 310, 70, 30);
 
 noFill();
 bezier(305, 145, 270, 125, 230, 125, 195, 145);    // eye curve
 
 stroke(65, 65, 65);
 bezier(315, 210, 250, 140, 165, 225, 180, 240);    // mouth
 
 // tongue
 strokeWeight(10);
 stroke(240, 80, 170);
 fill(255, 170, 220);
 arc(250, 185, 30, 90, 0, PI);
 
 fill(100, 50, 35);
 stroke(65, 40, 30);
 strokeWeight(10);
 rect(0, 0, 30, 500);
 triangle(28, 340, 420, 355, 28, 370);
}
