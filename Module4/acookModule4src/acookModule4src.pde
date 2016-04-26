size(750, 750);
background(80);

float x = 0;
float y = 0;
float unit = 10;

for(int i = 0; i < 85; i = i++) {
  x = 1*random(1, 600);
  y = 1*random(1, 600);
  
// object 1
strokeWeight(5);
stroke(215, 215, 255);

// main lines
line(x+unit*7.5, y+unit*2.8, x+unit*7.5, y+unit*18.2);
line(x+unit*13.8, y+unit*7.4, x+unit*1.2, y+unit*13.6);
line(x+unit*1.2, y+unit*7.4, x+unit*13.8, y+unit*13.6);

// tendril lines
line(x+unit*5.4, y+unit*3.8, x+unit*7.5, y+unit*5.4);
line(x+unit*7.5, y+unit*5.4, x+unit*9.8, y+unit*3.8);

line(x+unit*11.8, y+unit*5, x+unit*11.4, y+unit*8.8);
line(x+unit*11.4, y+unit*8.8, x+unit*14, y+unit*9.8);

line(x+unit*14, y+unit*11.2, x+unit*11.4, y+unit*12.4);
line(x+unit*11.4, y+unit*12.4, x+unit*11.8, y+unit*15);

line(x+unit*7.5, y+unit*14.8, x+unit*9.8, y+unit*17.2);
line(x+unit*7.5, y+unit*14.8, x+unit*5.4, y+unit*17.2);

line(x+unit*1, y+unit*11.2, x+unit*3.5, y+unit*12.4);
line(x+unit*3.5, y+unit*12.4, x+unit*3, y+unit*15);

line(x+unit*3, y+unit*5, x+unit*3.2, y+unit*8.8);
line(x+unit*3.2, y+unit*8.8, x+unit*1, y+unit*9.8);

  x = 1*random(1, 600);
  y = 1*random(1, 600);
  
// object 2
strokeWeight(5);
stroke(215, 215, 255);

// main lines
line(x+unit*7.5, y+unit*2.8, x+unit*7.5, y+unit*18.2);
line(x+unit*13.8, y+unit*7.4, x+unit*1.2, y+unit*13.6);
line(x+unit*1.2, y+unit*7.4, x+unit*13.8, y+unit*13.6);

fill(235, 235, 255);
beginShape();
vertex(x+7.5*unit, y+7*unit);
vertex(x+10*unit, y+7.5*unit);
vertex(x+10*unit, y+12.5*unit);
vertex(x+7.5*unit, y+13.5*unit);
vertex(x+4.5*unit, y+12.5*unit);
vertex(x+4.5*unit, y+7.5*unit);
vertex(x+7.5*unit, y+7*unit);
endShape();

// tendril lines
line(x+unit*5.4, y+unit*3.8, x+unit*7.5, y+unit*5.4);
line(x+unit*7.5, y+unit*5.4, x+unit*9.8, y+unit*3.8);

line(x+unit*11.8, y+unit*5, x+unit*11.4, y+unit*8.8);
line(x+unit*11.4, y+unit*8.8, x+unit*14, y+unit*9.8);

line(x+unit*14, y+unit*11.2, x+unit*11.4, y+unit*12.4);
line(x+unit*11.4, y+unit*12.4, x+unit*11.8, y+unit*15);

line(x+unit*7.5, y+unit*14.8, x+unit*9.8, y+unit*17.2);
line(x+unit*7.5, y+unit*14.8, x+unit*5.4, y+unit*17.2);

line(x+unit*1, y+unit*11.2, x+unit*3.5, y+unit*12.4);
line(x+unit*3.5, y+unit*12.4, x+unit*3, y+unit*15);

line(x+unit*3, y+unit*5, x+unit*3.2, y+unit*8.8);
line(x+unit*3.2, y+unit*8.8, x+unit*1, y+unit*9.8);

  x = 1*random(1, 600);
  y = 1*random(1, 600);
  
// object 3
strokeWeight(5);
stroke(215, 215, 255);

// main lines
line(x+unit*7.5, y+unit*2.8, x+unit*7.5, y+unit*18.2);
line(x+unit*13.8, y+unit*7.4, x+unit*1.2, y+unit*13.6);
line(x+unit*1.2, y+unit*7.4, x+unit*13.8, y+unit*13.6);

// tendril lines
line(x+unit*5.4, y+unit*3.8, x+unit*7.5, y+unit*5.4);
line(x+unit*7.5, y+unit*5.4, x+unit*9.8, y+unit*3.8);
line(x+unit*5.4, y+unit*4.8, x+unit*7.5, y+unit*6.4);
line(x+unit*7.5, y+unit*6.4, x+unit*9.8, y+unit*4.8);

line(x+unit*11.8, y+unit*5, x+unit*11.4, y+unit*8.8);
line(x+unit*11.4, y+unit*8.8, x+unit*14, y+unit*9.8);
line(x+unit*11.3, y+unit*4.5, x+unit*10.9, y+unit*8.3);
line(x+unit*10.9, y+unit*8.3, x+unit*13.5, y+unit*9.3);

line(x+unit*14, y+unit*11.2, x+unit*11.4, y+unit*12.4);
line(x+unit*11.4, y+unit*12.4, x+unit*11.8, y+unit*15);
line(x+unit*13.5, y+unit*11.7, x+unit*10.9, y+unit*12.9);
line(x+unit*10.9, y+unit*12.9, x+unit*11.3, y+unit*14.5);

line(x+unit*7.5, y+unit*14.8, x+unit*9.8, y+unit*17.2);
line(x+unit*7.5, y+unit*14.8, x+unit*5.4, y+unit*17.2);
line(x+unit*7.5, y+unit*13.8, x+unit*9.8, y+unit*16.2);
line(x+unit*7.5, y+unit*13.8, x+unit*5.4, y+unit*16.2);

line(x+unit*1, y+unit*11.2, x+unit*3.5, y+unit*12.4);
line(x+unit*3.5, y+unit*12.4, x+unit*3, y+unit*15);
line(x+unit*1.5, y+unit*10.7, x+unit*4, y+unit*12.9);
line(x+unit*4, y+unit*12.9, x+unit*4, y+unit*16);

line(x+unit*3, y+unit*5, x+unit*3.2, y+unit*8.8);
line(x+unit*3.2, y+unit*8.8, x+unit*1, y+unit*9.8);
line(x+unit*3.5, y+unit*5.5, x+unit*3.7, y+unit*9.3);
line(x+unit*3.7, y+unit*9.3, x+unit*1.5, y+unit*10.3);
}