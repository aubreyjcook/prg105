void setup() {
 size (480, 120);
 smooth();
}

void draw() {
  background(204);
  owl(110, 110);
  owl(180, 110);
  owl(250, 110);
  owl(320, 110);
}

void owl(int x, int y){
  pushMatrix();
  translate(x, y);
  stroke(0);
  strokeWeight(70);
  line(0, -35, 0, -65);
  noStroke();
  fill(255);
  ellipse(-17.5, -65, 35, 35);
  ellipse(17.5, -65, 35, 35);
  arc(0, -65, 70, 70, 0, PI);
  fill(0);
  ellipse(-14, -65, 8, 8);
  ellipse(14, -65, 8, 8);
  quad(0, -58, 4, -51, 0, -44, -4, -51);
  popMatrix();
}


/* notes
Functions significantly reduce the amount of code that needs to be written in most cases, since it allows specific sets of code to be isolated and run as many times as needed
*/