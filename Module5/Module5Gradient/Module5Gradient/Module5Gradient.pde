size (500, 500);

// variables
int r = 0, g = 0, b = 0;
int myStrokeWeight = 3;

for (int i = 0; i < width; i++){
 stroke(r, i, b);
 line (i, 0, i, height);
}