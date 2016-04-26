
//import the minim sound library
import ddf.minim.*; //the * at the end specifies to import the whole library

//add your images
PImage dog;
PImage cat; // pshape because I am using SVG files
AudioSnippet woof;
AudioSnippet meow; // declaring our audio files
Minim minim; // instance of the minim sound library
void setup()
{
  size(600,600);
  cat= loadImage("cat.png");
  dog= loadImage("dog.png");
  minim = new Minim(this); // creates an instance of minim
  meow= minim.loadSnippet("meow.wav"); // loads the sound
  woof= minim.loadSnippet("woof.wav");
}
void draw()
{
 image(cat, 25, 25);
 image(dog, 350, 250);
 
 if(mousePressed)
 {
   //println(mouseX, mouseY);
   if(mouseX > 31 && mouseX <310  && mouseY >40 && mouseY < 300)
   {
     meow.rewind();//makes sure you are at the beginning
     meow.play(); // plays
   }
   else if(mouseX > 354 && mouseX <530  && mouseY >250 && mouseY < 545)
   {
     woof.rewind();
     woof.play();
   }
 }
}
