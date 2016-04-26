size(400, 400);
background(0);
smooth();
noStroke();
for (int y = 0; y <= height; y+= 40) {
  for (int x = 0; x <= width; x+= 40) {
    fill (35, 255, 255);
    triangle(x-10, y+20, x-10, y-10, x+20, y);
  }
}