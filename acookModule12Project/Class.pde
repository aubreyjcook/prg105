class star {
  float x = 0;
  float y = 0;
  int unit = 10;
  int myColor = 255;
  
  star(int tempX, int tempY, int tempUnit)
  {
    x = tempX;
    y = tempY;
    unit = tempUnit;
  }
  
  star(int tempX, int tempY, int tempUnit, int tempColor){
    x = tempX;
    y = tempY;
    unit = tempUnit;
    myColor = tempColor;
  }
  
  void display() {
    fill(myColor);
    beginShape();
    vertex(x+30*unit, y+10*unit); 
    vertex(x+35*unit, y+27*unit); 
    vertex(x+52*unit, y+27*unit); 
    vertex(x+38*unit, y+37*unit); 
    vertex(x+42*unit, y+53*unit); 
    vertex(x+30*unit, y+43*unit); 
    vertex(x+16*unit, y+53*unit); 
    vertex(x+21*unit, y+37*unit); 
    vertex(x+8*unit, y+27*unit); 
    vertex(x+24*unit, y+27*unit); 
    endShape(CLOSE);
  }
  
  void moveMethod() {
  x = random(width);
  y = random(height);
  }

}