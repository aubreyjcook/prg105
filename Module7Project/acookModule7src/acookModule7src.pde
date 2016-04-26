PImage bp;
PImage gp;
PImage rp;
PImage bs;
PImage rs;

float x = 0;
float y = 0;

void setup() {
  size(1200,900);
  background(0);
  
  bp = loadImage("blueplanet.png");
  gp = loadImage("greenplanet.png");
  rp = loadImage("ringplanet.png");
  bs = loadImage("bluestar.png");
  rs = loadImage("redstar.png");
  
  // this for loop creates the background
  for (int i = 0; i < 200; i++) { 
  x = 1*random(0, width);
  y = 1*random(0, height);
  image(rs, x, y, 5, 5);
  x = 1*random(0, width);
  y = 1*random(0, height);
  image(bs, x, y, 5, 5);
  }
}

void draw() {
   //planets are drawn in the order of their appearance
  image(bs, 10, 10);
  image(rs, 100, 80);
  image(gp, 170, 100);
  image(bp, 420, 260);
  image(rp, 500, 375);
  image(gp, 800, 550, 100, 100);
  image(rp, 850, 600, 250, 150);
  image(bp, 1050, 725, 50, 50);
}