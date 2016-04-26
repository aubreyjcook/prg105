star myStar;
star myStar2;

void setup()
{
  size(600, 600);
  background(0);
  myStar = new star(100, 100, 10, 200);// calls constructor
  myStar2 = new star(0, 0, 5);//overloaded constructor
}

void draw()
{
 myStar.display();
 myStar2.display();
 
 if (mousePressed){
   myStar.moveMethod();
   myStar2.moveMethod();
 }
}