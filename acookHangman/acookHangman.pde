//Hangman
PImage hangman;
String imageHang = "10hang.png";

PFont myFont;
int numRight = 0;
int numWrong = 0;
int winner = 0;

// declare array of words
String[] game = {
  "JAVA", "JAVASCRIPT", "PYTHON", "RUBY", "COBOL"
};
int answerKey = 0;
String answer = "";
char guessed[];
char wrong[];

//variable to store display string
String display = "Please type the letter you wish to guess: ";
String display2 = "Press enter when you are done!";
String display3 = "";
String wrongAnswers = "";

// Variable to store text currently being typed
String typing = "";

// Variable to store saved text when return is hit
String guess = "";

void setup() {
  size(600, 600);
  myFont = createFont("Verdana", 16, true);
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

  hangman = loadImage(imageHang);
  image(hangman, 350, 25);

  textFont(myFont);
  fill(0);
  for (int i = 0; i < guessed.length; i++)
  {
    display3 = display3 + " " + guessed[i];
  }

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
      if (numWrong == 11)
      {
        display = "YOU LOSE!";
        display2 = "";
      }
    }
  } // end of added block
}