float angle = 0.0;

void setup() {
  size(120, 120);
  smooth();
}

void draw() {
  translate (mouseX,mouseY);
  scale (sin(angle) + 2);
  rect (-15, -15, 30, 30);
  angle += 0.1;
}

/* notes
the scale function changes the scale of the processing grid coordinate system,
in this case it changes based on the pattern of the sine curve
*/