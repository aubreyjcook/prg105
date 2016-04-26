int radius = 40;
float y = 90;
float speed = 0.5;
int direction = 1;

void setup() {
  size (120, 240);
  smooth();
  ellipseMode(RADIUS);
}

void draw() {
  background(0);
  y += speed * direction;
  if ((y > height - radius) || (y < radius) ) {
    direction = -direction;
  }
  if (direction == 1) {
    arc(60, y, radius, radius, 0.52, 5.76);
  } else {
    arc(60, y, radius, radius, 3.67, 8.9);
  }
  
}

/* notes
the edge of the screen is detected by the first if statement which says that if y is greater than the y minus the radius or less than the radius, it runs
the motion can be sped up or down by changing the float speed variable to a greater or lesser value
*/