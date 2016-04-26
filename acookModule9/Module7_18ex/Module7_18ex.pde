void setup() {
  size (240, 120);
}

void draw() {
  pushMatrix();
  translate(mouseX,mouseY);
  rect (0, 0, 30 ,30);
  popMatrix();
  translate(35, 10);
  rect (0, 0, 15, 15);
}

/* notes
push and pop matrix are used to store the current grid as a stack
it is not advisable to use either command on their own, as it will 
result in stack overflow
*/