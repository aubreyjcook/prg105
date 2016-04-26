//Hangman
PImage hangman;
String imageHang10 = "10hang.png";
String imageHang09 = "09hang.png";
String imageHang08 = "08hang.png";
String imageHang07 = "07hang.png";
String imageHang06 = "06hang.png";
String imageHang05 = "05hang.png";
String imageHang04 = "04hang.png";
String imageHang03 = "03hang.png";
String imageHang02 = "02hang.png";
String imageHang01 = "01hang.png";
String imageHang00 = "00hang.png";

PFont myFont; //this sets a font
int numRight = 0;
int numWrong = 0;
int winner = 0;

// declare array of words
String[] game = { //this is an array initializing with the words to guess
  "JAVA", "JAVASCRIPT", "PYTHON", "RUBY", "COBOL", "MYSQL", "PHP", "HTML", "CSS", "PASCAL", "BASIC", "CPLUSPLUS", "CSHARP", "PERL", "RUBYONRAILS", "FORTRAN", "VISUALBASIC", "DOTNET"
};
int answerKey = 0; //this variable follows the position within the array that holds the answer word
String answer = "";
char guessed[];
char wrong[];

//declare array of images
String[] hangmanImage = {
  imageHang00, imageHang01, imageHang02, imageHang03, imageHang04, imageHang05, imageHang06, imageHang07, imageHang08, imageHang09, imageHang10, 
};

//variable to store display string
String display = "Please type the letter you wish to guess: "; // these display the output
String display2 = "Press enter when you are done!";
String display3 = "";
String wrongAnswers = "";

// Variable to store text currently being typed
String typing = "";

// Variable to store saved text when return is hit
String guess = "";

void setup() {
  size(600, 600);
  myFont = createFont("Verdana", 16, true); //changes font type to verdana for display
  answerKey = int(random(0, game.length));
  answer = game[answerKey];
  winner = answer.length();

  char[] gameChar = new char[answer.length()];
  guessed = new char[answer.length()];
  for (int i = 0; i < answer.length (); i++)
  {
    gameChar[i] = answer.charAt(i);
    guessed[i] = '_';
  }

  wrong = new char[11];
  for (int i = 0; i < 11; i++)
  {
    wrong[i] = '*';
  }
  
  hangman = loadImage(imageHang00);
}

void draw()
{
  background(225);
  wrongAnswers = "Guessed letters: ";
  int indent = 25;
  display3 = "";

  for (int i = 0; i < 11; i++)
  {
    wrongAnswers = wrongAnswers + " " + wrong[i];
  }

  textFont(myFont);
  fill(0);
  for (int i = 0; i < guessed.length; i++)
  {
    display3 = display3 + " " + guessed[i];
  }
  
  image(hangman, 350, 25);
  
  // TESTING...
  text(display3, indent, 200);

  text(display, indent, 400);
  text(display2, indent, 430);
  text(typing, indent, 490);
  text(wrongAnswers, indent, 550);
  guess = typing;

  if (guess.length() > 1)
  {
    display = "Please type only one letter!";
    typing = "";
  }
}

void keyPressed()
{
  // If the return key is pressed, save the String and clear it
  if (key == '\n' )
  {
    play(typing);
    // A String can be cleared by setting it equal to ""
    typing = "";
  } else {
    // Otherwise, concatenate the String
    // Each character typed by the user is added to the end of the String variable.
    typing = typing + key;
  }
}

void play(String guess)
{
  boolean guessedRight = false;
  // THE FOLLOWING LINE DOES NOT APPEAR IN THE VIDEOS
  // it solves the bug resulting from hitting enter without typing a guess (video step 4)
  if (guess.length() > 0) {
    guess = guess.toUpperCase();
    char myGuess = guess.charAt(0);
    for (int c = 0; c < answer.length (); c++)
    {
      if (myGuess == answer.charAt(c))
      {
        // THE FOLLOWING LINE DOES NOT APPEAR IN THE VIDEOS
        // the if statement was added to prevent counting the same guess twice
        if (guessed[c] != myGuess) {
          guessed[c] = myGuess;
          numRight += 1;
        } // end of added if
        guessedRight = true;
        if (numRight == winner)
        {
          display = "YOU WIN!";
          display2 = "";
        }
      }
    }
    //println(guessedRight);
    if (guessedRight == false)
    {
      // println(wrong[numWrong],numWrong,myGuess);
      wrong[numWrong] = myGuess;
      numWrong += 1;
      hangman = loadImage(hangmanImage[numWrong - 1]);
      if (numWrong == 11)
      {
        display = "YOU LOSE!";
        display2 = "";
      }
    }
  } // end of added block
}