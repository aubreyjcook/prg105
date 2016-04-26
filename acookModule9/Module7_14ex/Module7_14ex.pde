float angle = 0.0;
float offset = 60;
float scalar = 30;
float speed = 0.05;

void setup() {
  size (120, 120);
  smooth();
}

void draw() {
  float x = offset + cos(angle) *scalar;
  float y = offset + sin(angle) *scalar;
  ellipse (x, y, 40, 40);
  angle += speed;
}

/* notes
the scalar variable is used to determine the starting radius from the center of the 
screen that the circle is drawn around, changing it to 60 greatly increases the 
distance from the center that the circle will start at and the path it will follow

changing the offset variable to 90 causes the starting point of the origin of the 
circle's path is at
*/