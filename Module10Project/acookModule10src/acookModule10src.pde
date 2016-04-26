PShape smileYellow;
PShape smileRed;
PShape smileBlue;

float x = 0;
float y = 90;
float speed = 3;
boolean move = false;

float angle = 0.0;
boolean spin = false;

void setup() {
  size(400, 400);
  smileYellow = loadShape("smileYellow.svg");
  smileRed = loadShape("smileRed.svg");
  smileBlue = loadShape("smileBlue.svg");
  frameRate(30);
}

void draw() {
  background(0);
  resizeShape();
  moveShape();
  spinShape();
}

void resizeShape() {
   if (mouseX > 0 && mouseX < 90 && mouseY > 0 && mouseY < 90) {
     shape(smileYellow, 0, 0, 180, 180);
   } else { shape(smileYellow, 0, 0); }
}

void moveShape() {
  if (mousePressed) {
    if (mouseX > 0 && mouseX < 90 && mouseY > 90 && mouseY < 200) {
      move = true;
    }
  }
    shape (smileRed,x,y);
    
  if (move == true) {
    x += speed;
    if (x > width) {
      x = 0;
      move = false;
    }
  }
}

void spinShape() {
 if (mousePressed) { if (mouseX > 200 && mouseX < 300 && mouseY > 200 && mouseY < 300) { spin = true; }}
   
   if (spin == true) {
      angle += 5;
      translate(width/2, height/2);
      rotate(angle*TWO_PI/360);
      shape(smileBlue, 0, 0);
    } else {shape(smileBlue, 200, 200);}
  
  if(angle > 360) { spin = false; angle = 0; }
}