size(500, 500);
background(0);
smooth();
noStroke();
fill(255, 140);
int y = 0; 
int x = 0;
while (y < height+45) {
  triangle(x+0, y+75, x+28, y+0, x+56, y+75);
  y += 40;
}

while (x < width+45) {
  triangle(x+0, 75, x+28, 0, x+56, 75);
  x += 40;
}