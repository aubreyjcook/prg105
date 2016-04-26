size(500, 500);
background(0);
smooth();
fill(185, 185, 210, 0);
stroke(70, 70, 255, 80);
for (int y = 20; y <= height-20; y += 10) {
 for (int x = 20; x <= height-20; x += 10) {
   ellipse (x, y, 4, 4);
   // Draw a line to the center of the display
   line(x, y, 500, 0);
}
}