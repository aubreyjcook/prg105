size (600, 600);
background (0);

// gradient
  fill(185, 185, 210, 0);
  stroke(70, 70, 255, 80);
  for (float y = 20; y <= height-20; y += 10) {
    for (float x = 20; x <= height-20; x += 10) {
       ellipse (x, y, 4, 4);
       // Draw a line to the middle right of the display
       line(x, y, 600, 300);
    }
  }

// gradient

// variables for objects
float x = 0;
float y = 0;
float unit = 10;
stroke (255, 150);

// object aspirin molecule
for (int i = 7; i > 0; i--) {
  x = random(0, 370);
  y = random(0, 500);
  
  fill(255, 150);
  strokeWeight(1);
  smooth();
  //main hexagon
    beginShape();
    vertex(x+6.2*unit, y+8.8*unit);
    vertex(x+10.6*unit, y+11*unit);
    vertex(x+10.6*unit, y+16*unit);
    vertex(x+6.2*unit, y+18.4*unit);
    vertex(x+2*unit, y+16*unit);
    vertex(x+2*unit, y+11*unit);
    vertex(x+6.2*unit, y+8.8*unit);
    endShape();
  
  // hexagon lines
    line(x+6.2*unit, y+9.5*unit, x+9.8*unit, y+11.3*unit);
    line(x+9.8*unit, y+15.6*unit, x+6.2*unit, y+17.6*unit);
    line(x+2.8*unit, y+11.5*unit, x+2.8*unit, y+15.6*unit);
    
    // link lines
    line(x+3.6*unit, y+1.6*unit, x+6.7*unit, y+3.5*unit);
    line(x+3.2*unit, y+2.2*unit, x+6.2*unit, y+4.1*unit);
    
    line(x+9.2*unit, y+2*unit, x+6.2*unit, y+3.8*unit);
    line(x+6.2*unit, y+3.8*unit, x+6.2*unit, y+8.8*unit);
    
    line(x+10.6*unit, y+11*unit, x+13.6*unit, y+9.4*unit);
    
    line(x+16.2*unit, y+9.4*unit, x+19*unit, y+11*unit);
    line(x+19*unit, y+11*unit, x+22.1*unit, y+9.2*unit);
    
    line(x+18.6*unit, y+10.8*unit, x+18.6*unit, y+14.8*unit);
    line(x+19.5*unit, y+10.8*unit, x+19.5*unit, y+14.8*unit);
  
  // letters
    noFill();
    strokeWeight(3);
    
    ellipse(x+2*unit, y+1.5*unit, 1.8*unit, 2*unit);
    ellipse(x+10.5*unit, y+1.4*unit, 1.8*unit, 2*unit);
    ellipse(x+14.8*unit, y+8.8*unit, 1.8*unit, 2*unit);
    ellipse(x+19.1*unit, y+16.1*unit, 1.8*unit, 2*unit);
    arc(x+23.4*unit, y+8.8*unit, 1.8*unit, 2*unit, radians(30), radians(320));
    
    line(x+12*unit, y+.2*unit, x+12*unit, y+2.4*unit);
    line(x+13.6*unit, y+.2*unit, x+13.6*unit, y+2.4*unit);
    line(x+12*unit, y+1.2*unit, x+13.6*unit, y+1.2*unit);
    
    line(x+24.8*unit, y+7.8*unit, x+24.8*unit, y+9.8*unit);
    line(x+26.2*unit, y+7.8*unit, x+26.2*unit, y+9.8*unit);
    line(x+24.8*unit, y+8.6*unit, x+26.2*unit, y+8.6*unit);
    
    arc(x+27.5*unit, y+9*unit, .8*unit, .8*unit, radians(210), radians(460));
    arc(x+27.5*unit, y+9.8*unit, 1*unit, 1*unit, radians(270), radians(520));
}
// object aspirin molecule

// object hydroxide ion
for (int i = 10; i > 0; i--) {
  x = random(0, 470);
  y = random(0, 600);
  
  ellipse(x+20.5*unit, y+2.4*unit, 1.8*unit, 2*unit);
  
  line(x+22*unit, y+1.4*unit, x+22*unit, y+3.4*unit);
  line(x+23.6*unit, y+1.4*unit, x+23.6*unit, y+3.4*unit);
  line(x+22*unit, y+2.4*unit, x+23.6*unit, y+2.4*unit);
  
  line(x+24.2*unit, y+1.4*unit, x+25*unit, y+1.4*unit);
}
// object hydroxide ion

// object carbon trihydride ion
for (int i = 10; i > 0; i--) {
  x = random(0, 470);
  y = random(0, 600);
  
  arc(x+23.4*unit, y+8.8*unit, 1.8*unit, 2*unit, radians(30), radians(320));
  
  line(x+24.8*unit, y+7.8*unit, x+24.8*unit, y+9.8*unit);
  line(x+26.2*unit, y+7.8*unit, x+26.2*unit, y+9.8*unit);
  line(x+24.8*unit, y+8.6*unit, x+26.2*unit, y+8.6*unit);
  
  arc(x+27.5*unit, y+9*unit, .8*unit, .8*unit, radians(210), radians(460));
  arc(x+27.5*unit, y+9.8*unit, 1*unit, 1*unit, radians(270), radians(520));
}
// object carbon trihydride ion