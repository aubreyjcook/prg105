int time1 = 4000;
int time2 = 8000;
float x = 0;

void setup() {
  size(480, 120);
  smooth();
}

void draw() {
  int currentTime = millis();
  background (204);
  if (currentTime > time2){
    x -= 0.5;
  } else if (currentTime > time1) {
    x += 2;
  }
  ellipse (x, 60, 90, 90);
}

/* notes
if time1 and time2 are changed, the delay from when the object begins to move is changed, as well as the delay until it starts moving back in the opposite direction
*/