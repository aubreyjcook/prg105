import ddf.minim.*;

PImage bikeBell;
PImage door;
PImage doorBell;
PImage lock;

AudioSnippet bikeBellDing;
AudioSnippet doorOpen;
AudioSnippet doorBellRing;
AudioSnippet lockClick;

Minim minim;
void setup(){
  size(800, 200);
  minim = new Minim(this);
  bikeBell = loadImage("bikebell.jpg");
  door = loadImage("door.jpg");
  doorBell = loadImage("doorbell.jpg");
  lock = loadImage("lock.jpg");
  
  bikeBell.resize(200, 200);
  door.resize(200, 200);
  doorBell.resize(200, 200);
  lock.resize(200, 200);
  
  bikeBellDing = minim.loadSnippet("bikebellSound.aiff");
  doorOpen = minim.loadSnippet("doorSound.wav");
  doorBellRing = minim.loadSnippet("doorbellSound.wav");
  lockClick = minim.loadSnippet("lockSound.wav");
}

void draw(){
  image(bikeBell, 0, 0);
  image(door, 200, 0);
  image(doorBell, 400, 0);
  image(lock, 600, 0);
}

void mouseClicked() {
  if (mouseX > 0 && mouseX < 200) {
    bikeBellDing.rewind();
    bikeBellDing.play();
  } else if (mouseX > 200 && mouseX < 400) {
    doorOpen.rewind();
    doorOpen.play();
  } else if (mouseX > 400 && mouseX < 600) {
    doorBellRing.rewind();
    doorBellRing.play();
  } else {
    lockClick.rewind();
    lockClick.play();
  }
}

//images sourced from pixabay.com
//sounds sourced from freesound.com