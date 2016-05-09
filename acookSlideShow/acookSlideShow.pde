PImage displayPhoto;
String[] imagesArray;

void setup() {
  size(600,400);
  
  imagesArray = loadStrings("images.txt");
}

void draw() {
  int t = second();
  
  if     (t < 12) { int i = 0; displayPhoto = loadImage(imagesArray[i]); }
  else if(t < 24) { int i = 1; displayPhoto = loadImage(imagesArray[i]); }
  else if(t < 36) { int i = 2; displayPhoto = loadImage(imagesArray[i]); }
  else if(t < 48) { int i = 3; displayPhoto = loadImage(imagesArray[i]); }
  else if(t < 60) { int i = 4; displayPhoto = loadImage(imagesArray[i]); }
  
  image(displayPhoto,0,0);
}