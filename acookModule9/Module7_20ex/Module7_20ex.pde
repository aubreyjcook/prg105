float angle = 0.0;

void setup() {
  size (240, 120);
  smooth();
}

void draw() {
  translate (mouseX, mouseY);
  rotate (angle);
  rect (-15,-15,30,30);
  angle += 0.1;
}

/* notes
when the order of the functions are changes, the object is not rotated from the same
origin point, if rotate comes first it rotates around the origin and translates to the
point of the cursor,

if the reverse is true, the object draws at the point of the cursor and rotates continually 
on that point
*/