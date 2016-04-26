int x = 0;
int y = 0;

void setup()
{
    size(600,600);
    noStroke();
//sky
fill (188, 188, 236); //light blue
rect(0,0, width, height/2);
//ground
fill(129, 68, 0); //earth red
rect(0,height/2, width, height);
}

void draw()
{
  fill(255);
 
  if (mousePressed == true)
  {
    println(y);
    x = mouseX;
    y = mouseY;
    
    if (y<=height/2) {
      int unit = 5;
      if (y<=height/4) { unit = 2; } // these two if statements control for the balloon shape if the mouse is clicked on the upper part of the screen
    // balloon object start
    stroke(160, 70, 70);
    fill(170, 65, 0);
    
    beginShape(); //lower part of balloon
    vertex(x+2*unit, y+10*unit);
    vertex(x+18*unit, y+10*unit);
    vertex(x+12.5*unit, y+20*unit);
    vertex(x+7.5*unit, y+20*unit);
    vertex(x+2*unit, y+10*unit);
    endShape();
    
    ellipse(x+10*unit, y+10*unit, 16*unit, 16*unit); // upper balloon
    
    line(x+7.5*unit, y+20*unit, x+8.5*unit, y+24.6*unit); // tethering
    line(x+12.5*unit, y+20*unit, x+11.5*unit, y+24.6*unit);
    
    fill(180, 255, 80);
    
    rect(x+8.2*unit, y+25.2*unit, 3.5*unit, 3.5*unit); // carriage
    rect(x+8*unit, y+24.6*unit, 4*unit, 1*unit);
    
    // balloon object end
    
    } else if (y<=height) {
      int unit = 5;
      if(y<=height*3/4) { unit = 2; } // these two if statements control for the flower shape if the mouse is clicked on the LOWER part of the screen
    
    // flower object start
    stroke(25, 80, 0);
    fill(60, 115, 0);
    
    beginShape(); // stem
    vertex(x+10.6*unit, y+13*unit);
    vertex(x+10.8*unit, y+34*unit);
    vertex(x+9.4*unit, y+34*unit);
    vertex(x+10*unit, y+24*unit);
    vertex(x+10*unit, y+13*unit);
    vertex(x+10.6*unit, y+13*unit);
    endShape();
    
    fill(190, 225, 90); // flower
    ellipse(x+9.6*unit, y+6*unit, 5*unit, 5*unit);
    ellipse(x+14*unit, y+8.2*unit, 5*unit, 5*unit);
    ellipse(x+13*unit, y+13*unit, 5*unit, 5*unit);
    ellipse(x+7.8*unit, y+13.2*unit, 5*unit, 5*unit);
    ellipse(x+5.8*unit, y+9*unit, 5*unit, 5*unit);
    fill(80);
    ellipse(x+10*unit, y+10*unit, 5*unit, 5*unit);
    
    fill(60, 165, 0);
    
    beginShape(); // leaf left
    vertex(x+5*unit, y+23*unit);
    vertex(x+7*unit, y+23*unit);
    vertex(x+9*unit, y+24*unit);
    vertex(x+10*unit, y+27*unit);
    vertex(x+8*unit, y+27*unit);
    vertex(x+6.2*unit, y+25.9*unit);
    vertex(x+5*unit, y+23*unit);
    endShape();
    
    beginShape(); // leaf right
    vertex(x+16*unit, y+23*unit);
    vertex(x+15*unit, y+26*unit);
    vertex(x+13*unit, y+27.4*unit);
    vertex(x+11*unit, y+27.1*unit);
    vertex(x+11*unit, y+26.6*unit);
    vertex(x+12*unit, y+24.5*unit);
    vertex(x+14*unit, y+23.4*unit);
    vertex(x+16*unit, y+23*unit);
    endShape();
    
    // flower object end
    }
  }
}