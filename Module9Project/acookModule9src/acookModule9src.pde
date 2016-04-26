boolean large; // true when the large picture is open
int largePic; // which picture is enlarged

PImage pic1, pic2, pic3, pic4, pic5, pic6, pic7, pic8;

void setup() {
  size (1000, 500);
  
  pic1 = loadImage("image1.jpg"); 
  pic2 = loadImage("image2.jpg");
  pic3 = loadImage("image3.jpg");
  pic4 = loadImage("image4.jpg");
  pic5 = loadImage("image5.jpg");
  pic6 = loadImage("image6.jpg");
  pic7 = loadImage("image7.jpg");
  pic8 = loadImage("image8.jpg");
  
  large = false;
  largePic = 0;
}

void draw() {
  // check to see if there is a big picture open
  // large is false, draw background and the little pictures
  if (large == false) {
    background(0); // refresh the background
    image(pic1,20.0,20.0,100.0,70.8);
    image(pic2,140.0,20.0,100.0,73.4);
    image(pic3,260.0,20.0,100.0,73.7);
    image(pic4,380.0,20.0,100.0,73.7);
    image(pic5,500.0,20.0,100.0,73.7);
    image(pic6,620.0,20.0,100.0,73.7);
    image(pic7,740.0,20.0,100.0,73.7);
    image(pic8,860.0,20.0,100.0,73.7);
  } else {
    // we need to draw the large image
    scale(.55);
    translate(width/2-200,height/2-150);
    if (largePic == 1) {
      image(pic1,0.0,0.0);
    } else if (largePic == 2) {
      image(pic2,0.0,0.0);
    } else if (largePic == 3) {
      image(pic3,0.0,0.0);
    } else if (largePic == 4) {
      image(pic4,0.0,0.0);
    } else if (largePic == 5) {
      image(pic5,0.0,0.0);
    } else if (largePic == 6) {
      image(pic6,0.0,0.0);
    } else if (largePic == 7) {
      image(pic7,0.0,0.0);
    } else if (largePic == 8) {
      image(pic8,0.0,0.0);
    } // for all the pictures I have
    //draw the little x
    stroke(178,20,20);
    strokeWeight(6);
    line(5,5,35,35);
    line(5,35,35,5);
  }
}

// this function is called each time the mouse is clicked
void mouseClicked() {
  // the mouse has been clicked!!! I need to know where
  if (mouseX > 20.0 && mouseX < 120.0 && mouseY > 20.0 && mouseY < 90.8) {
    large = true;
    largePic = 1;
  } else if (mouseX > 140.0 && mouseX < 240.0 && mouseY > 20.0 && mouseY < 93.4) {
    large = true;
    largePic = 2;
  } else if (mouseX > 260.0 && mouseX < 380.0 && mouseY > 20.0 && mouseY < 93.4) {
    large = true;
    largePic = 3;
  } else if (mouseX > 380.0 && mouseX < 500.0 && mouseY > 20.0 && mouseY < 93.4) {
    large = true;
    largePic = 4;
  } else if (mouseX > 500.0 && mouseX < 620.0 && mouseY > 20.0 && mouseY < 93.4) {
    large = true;
    largePic = 5;
  } else if (mouseX > 620.0 && mouseX < 740.0 && mouseY > 20.0 && mouseY < 93.4) {
    large = true;
    largePic = 6;
  } else if (mouseX > 740.0 && mouseX < 860.0 && mouseY > 20.0 && mouseY < 93.4) {
    large = true;
    largePic = 7;
  } else if (mouseX > 860.0 && mouseX < 980.0 && mouseY > 20.0 && mouseY < 93.4) {
    large = true;
    largePic = 8;
  } // for all the pictures I have
  
  //check for the X
  if (large == true && mouseX > 165 && mouseX < 200 && mouseY > 53 && mouseY < 75) {
      large = false;
  }
}