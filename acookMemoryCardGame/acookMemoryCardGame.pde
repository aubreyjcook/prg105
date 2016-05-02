Cards[] myCard = new Cards[16]; 
int[] x = new int[16]; 
int[] y = new int[16]; 
int[] fv = new int[16]; 
int[] checkFv = new int[16];
int[] cardUp = new int[16];
boolean[] clicked = new boolean[16];
PImage flip;
PFont myFont;
int flipped = 0;
int win = 0;
int time;
int wait = 1000;

void setup() 
{ 
  int myX = 15; 
  int myY = 15; 
  int myFv = 0; 
  int count = 1;
  size (800, 800); 
  myFont = createFont("Verdana", 40, true);
  flip = loadImage("flip.png");
  time = millis();

  // filling our arrays
  for (int i = 0; i<16; i++) 
  { 
    clicked[i] = false; // if a card is clicked, you can't click it again
    y[i] = myY; 
    x[i] = myX; 
    fv[i] = count; 
    count +=1;
    if (count == 5)
    {
      count =1;
    }
    if (myX < 345) 
    { 
      myX += 115;
    } else if (myX > 345) 
    {  
      myX = 15; 
      myY += 150;
    }
  } 

  shuffle(); // shuffle the cards

  for (int i = 0; i < 16; i++) 
  { 
    myCard[i] = new Cards (x[i], y[i], fv[i]);
  }
} 

void draw() 
{ 
  textFont(myFont);
  fill(0);
  background(255); // redraws the background
  for (int i=0; i<16; i++) 
  { 
    myCard[i].display();
  } 

    if (win == 8)
    {
      text("You Win!!!!", 100, 200);
    }
} 

void mouseClicked()
{ if (flipped < 2) {
  for (int i=0; i<16; i++)
  {
    if (mouseX > x[i] && mouseX < (x[i] + 105) &&  
      mouseY > y[i] && mouseY < (y[i] + 140) && (clicked[i] == false)) 
    { 
      myCard[i].displayFront();
      clicked[i] = true;
      cardUp[flipped] = i;
      
      flipped ++;
      
      if (flipped == 2)
      {
        //println("0: ",fv[cardUp[0]]);
        //println("1: ", fv[cardUp[1]]);
        
        // check if the cards match
        if (fv[cardUp[0]] == fv[cardUp[1]])
        {
          // take the cards off the screen if they matched
          myCard[cardUp[0]].matched();
          myCard[cardUp[1]].matched();
          win += 1;
        }
        if(millis() - time >= wait)
        {
          for (int j = 0; j<16; j++)
          {
            myCard[j].faceDown();
            clicked[j] = false;
          }
          time = millis();
        flipped = 0;
        }
      }
    }
  }
}
}
void shuffle() 
{
  int temp=0;
  int rand=0;
  for (int i = 0; i<16; i++)
  {
    rand = int(random(0,16));
    temp = fv[i];
    fv[i] = fv[rand];
    fv[rand] = temp;
  }
}