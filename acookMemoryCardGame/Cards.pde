class Cards
{
  PImage cardImage;
  int show = 0;  // shows the back of the card initially
  //int cardWidth = 105;
  //int cardHeight = 130;
  int cardX = 0; // x-position of the card
  int cardY = 0; // y-position of the card
  int faceValue = 0;  
  
  String[] cardName = {
    "00cards.png","01cards.png","02cards.png","03cards.png",
    "04cards.png","05cards.png","06cards.png","07cards.png",
    "08cards.png","09cards.png","10cards.png","11cards.png",
    "12cards.png","13cards.png"
  };
  
  Cards(int x, int y, int fv)
  {
    cardX = x;
    cardY = y;
    faceValue = fv;
  }
          
  void display()
  {
    cardImage = loadImage(cardName[show]);
    image(cardImage, cardX, cardY);
  }  
  
  void displayFront()
  {
    show = faceValue;
    println("displaying");
  }
  
  void faceDown()
  {

    show = 0;
  }
  
  void matched()
  {  
    // println("matched");
    cardX = -150;
  }
}