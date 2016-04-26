//you must input the numbers "1 3 3 7" to unlock the code

import ddf.minim.*;

PImage keypadBack;
PImage keypadKey;
PImage keypadDisplay;

PShape smileYellow;
PShape smileRed;
PShape smileBlue;

float xReassign = 0;
float yReassign = 90;
float speed = 3;
boolean move = false;

float angle = 0.0;
boolean spin = false;

float randomXCons1;
float randomXCons2;
float randomXCons3;

float randomYCons1;
float randomYCons2;
float randomYCons3;

float randomCons;

AudioSnippet dial1;
AudioSnippet dial2;
AudioSnippet dial3;
AudioSnippet dial4;
AudioSnippet dial5;
AudioSnippet dial6;
AudioSnippet dial7;
AudioSnippet dial8;
AudioSnippet dial9;
AudioSnippet dialStar;
AudioSnippet dialZero;
AudioSnippet dialPound;
AudioSnippet buzzerSound;
AudioSnippet toneSuccess;
AudioSnippet wagnerROTV;

int displayOne = 0;
int displayTwo = 0;
int displayThree = 0;
int displayFour = 0;

int displayCount = 0;

boolean codeLock = false;

Minim minim;
void setup() {
  size(600, 700);
  minim = new Minim(this);
  keypadBack = loadImage("keypadBack.png");
  keypadKey = loadImage("keypadKey.png");
  keypadDisplay = loadImage("keypadDisplay.png");
  
  dial1 = minim.loadSnippet("dial1.wav");
  dial2 = minim.loadSnippet("dial2.wav");
  dial3 = minim.loadSnippet("dial3.wav");
  dial4 = minim.loadSnippet("dial4.wav");
  dial5 = minim.loadSnippet("dial5.wav");
  dial6 = minim.loadSnippet("dial6.wav");
  dial7 = minim.loadSnippet("dial7.wav");
  dial8 = minim.loadSnippet("dial8.wav");
  dial9 = minim.loadSnippet("dial9.wav");
  dialStar = minim.loadSnippet("dialStar.wav");
  dialZero = minim.loadSnippet("dialZero.wav");
  dialPound = minim.loadSnippet("dialPound.wav");
  buzzerSound = minim.loadSnippet("buzzerSound.wav");
  toneSuccess = minim.loadSnippet ("toneSuccess.wav");
  wagnerROTV = minim.loadSnippet ("wagnerROTV.wav");

  smileYellow = loadShape("smileYellow.svg");
  smileRed = loadShape("smileRed.svg");
  smileBlue = loadShape("smileBlue.svg");
  frameRate(30);
    
  randomXCons1 = random(width);
  randomXCons2 = random(width);
  randomXCons3 = random(width);
  
  randomYCons1 = random(height);
  randomYCons2 = random(height);
  randomYCons3 = random(height);
  
}

void draw() {
  background(220);
  drawKeyPad();
  drawKeyPadDisplay();
  if (displayOne != 1 || displayTwo != 3 || displayThree != 3 || displayFour != 7) { // this first if detects if the input reads "1337"
    if (displayCount > 3) { //resets the display after four buttons are pressed and plays buzzer sound.
      displayCount = 0; 
      displayOne = 0; 
      displayTwo = 0; 
      displayThree = 0; 
      displayFour = 0; 
      buzzerSound.rewind(); 
      buzzerSound.play();
    }
  } else { 
      toneSuccess.play();
      wagnerROTV.play();
      codeLock = true;
  }
  
  if(codeLock == true) {
  resizeShape();
  moveShape();
  spinShape();
  randomFaces();
  }

}

void drawKeyPad() {
  float x = width/4;
  float y = width/2;
    
  image(keypadBack, x, y);
  image(keypadKey, x + 25, y + 50);
  image(keypadKey, x + 100, y + 50);
  image(keypadKey, x + 175, y + 50);
  image(keypadKey, x + 25, y + 125);
  image(keypadKey, x + 100, y + 125);
  image(keypadKey, x + 175, y + 125);
  image(keypadKey, x + 25, y + 200);
  image(keypadKey, x + 100, y + 200);
  image(keypadKey, x + 175, y + 200);
  image(keypadKey, x + 25, y + 265);
  image(keypadKey, x + 100, y + 265);
  image(keypadKey, x + 175, y + 265);
  
  fill(0);
  textSize(32);
  text("1", x + 45, y + 85);
  text("2", x + 120, y + 85);
  text("3", x + 195, y + 85);
  text("4", x + 45, y + 160);
  text("5", x + 120, y + 160);
  text("6", x + 195, y + 160);
  text("7", x + 45, y + 235);
  text("8", x + 120, y + 235);
  text("9", x + 195, y + 235);
  text("*", x + 45, y + 300);
  text("0", x + 120, y + 300);
  text("#", x + 195, y + 300);
}

void drawKeyPadDisplay() {
  image(keypadDisplay, width/3 - 15, height/3);
  
  fill(0);
  textSize(32);
  text(displayOne, 210, 290);
  text(displayTwo, 250, 290);
  text(displayThree, 290, 290);
  text(displayFour, 330, 290);
}

void mouseClicked() {
  
  if(mouseX > 185 && mouseX < 225 && mouseY > 360 && mouseY < 395) {
    dial1.rewind();
    dial1.play();
    findDisplay(1);
    displayCount++;
  }
  
  if(mouseX > 260 && mouseX < 300 && mouseY > 360 && mouseY < 395) {
    dial2.rewind();
    dial2.play();
    findDisplay(2);
    displayCount++;
  }
  
  if(mouseX > 335 && mouseX < 375 && mouseY > 360 && mouseY < 395) {
    dial3.rewind();
    dial3.play();
    findDisplay(3);
    displayCount++;
  }
  
  if(mouseX > 185 && mouseX < 225 && mouseY > 435 && mouseY < 470) {
    dial4.rewind();
    dial4.play();
    findDisplay(4);
    displayCount++;
  }
  
  if(mouseX > 260 && mouseX < 300 && mouseY > 435 && mouseY < 470) {
    dial5.rewind();
    dial5.play();
    findDisplay(5);
    displayCount++;
  }
  
  if(mouseX > 335 && mouseX < 375 && mouseY > 435 && mouseY < 470) {
    dial6.rewind();
    dial6.play();
    findDisplay(6);
    displayCount++;
  }
  
  if(mouseX > 185 && mouseX < 225 && mouseY > 510 && mouseY < 545) {
    dial7.rewind();
    dial7.play();
    findDisplay(7);
    displayCount++;
  }
  
  if(mouseX > 260 && mouseX < 300 && mouseY > 510 && mouseY < 545) {
    dial8.rewind();
    dial8.play();
    findDisplay(8);
    displayCount++;
  }
  
  if(mouseX > 335 && mouseX < 375 && mouseY > 510 && mouseY < 545) {
    dial9.rewind();
    dial9.play();
    findDisplay(9);
    displayCount++;
  }
  
  if(mouseX > 185 && mouseX < 225 && mouseY > 575 && mouseY < 610) {
    dialStar.rewind();
    dialStar.play();
    findDisplay('*');
    displayCount++;
  }
  
  if(mouseX > 260 && mouseX < 300 && mouseY > 575 && mouseY < 610) {
    dialZero.rewind();
    dialZero.play();
    findDisplay(0);
    displayCount++;
  }
  
  if(mouseX > 335 && mouseX < 375 && mouseY > 575 && mouseY < 610) {
    dialPound.rewind();
    dialPound.play();
    findDisplay('#');
    displayCount++;
  }
}

void findDisplay(int displayValue) {
  switch (displayCount) {
      case 0:
        displayOne = displayValue;
      break;
      case 1:
        displayTwo = displayValue;
      break;
      case 2:
        displayThree = displayValue;
      break;
      case 3:
        displayFour = displayValue;
      break;
    }
}

void resizeShape() {
   if (mouseX > 0 && mouseX < 90 && mouseY > 0 && mouseY < 90) {
     shape(smileYellow, 0, 0, 180, 180);
   } else { shape(smileYellow, 0, 0); }
}

void moveShape() {
  if (mousePressed) {
    if (mouseX > 0 && mouseX < 90 && mouseY > 90 && mouseY < 200) {
      move = true;
    }
  }
    shape (smileRed,xReassign,yReassign);
    
  if (move == true) {
    xReassign += speed;
    if (xReassign > width) {
      xReassign = 0;
      move = false;
    }
  }
}

void spinShape() {
 if (mousePressed) { if (mouseX > 200 && mouseX < 300 && mouseY > 200 && mouseY < 300) { spin = true; }}
   
   if (spin == true) {
      angle += 5;
      translate(width/2, height/2);
      rotate(angle*TWO_PI/360);
      shape(smileBlue, 0, 0);
    } else {shape(smileBlue, 200, 200);}
  
  if(angle > 360) { spin = false; angle = 0; }
}

void randomFaces() {
  float posX = 0;
  float posY = 0;
      for (int i = 0; i < 10; i++) { 
      posX = random(-width, height);
      posY = random(-width, height);
      shape(smileRed, posX, posY); }
     
      for (int j = 0; j < 10; j++) {
      posX = random(-width, height);
      posY = random(-width, height);
      shape(smileBlue, posX, posY); }
     
      for (int l = 0; l < 10; l++) {
      posX = random(-width, height);
      posY = random(-width, height);
      shape(smileYellow, posX, posY); }
      
      translate(width++, height++);
}
//sounds sourced from freesound.org