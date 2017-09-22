Dice newDice;
int counter;

void setup()
{
  size(450,450);
  background(177, 209, 230);
  noLoop();
}

void draw()
{

  background(78, 164, 186);
  int sum = 0;
  for (int y = 30; y <= 450; y = y + 148)
  {
    for (int x = 30; x < 650; x+= 148)
    {
      newDice = new Dice(x,y);
      newDice.show();
      counter += newDice.dice;
      sum += newDice.dice;
    }
  }

}

void mousePressed()
{
  redraw();
}

class Dice 
{
  int myX, myY, die, f1, f2, f3, s1, s2, s3;

  Dice(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }

  void roll()
  {
    dice = (int)((Math.random()*6)+1);
  }

  void show()
  {
    s1 = (int)(Math.random()*300);
    s2 = (int)(Math.random()*300);
    s3 = (int)(Math.random()*300);
    stroke(s1, s2, s3);
    strokeWeight(3);
    f1 = (int)(Math.random()*300);
    f2 = (int)(Math.random()*300);
    f3 = (int)(Math.random()*300);
    fill(f1, f2, f3);
    rect(myX, myY, 100, 100, 70);

    fill(0);
    noStroke();
    if (dice == 1)
    {
      ellipse(myX+50, myY+50, 12, 12);
    }
    else if (dice == 2)
    {
      ellipse(myX+28, myY+50, 12, 12);
      ellipse(myX+75, myY+50, 12, 12);
    }
    else if (dice == 3)
    {
      ellipse(myX+30, myY+30, 12, 12);
      ellipse(myX+50, myY+50, 12, 12);
      ellipse(myX+70, myY+70, 12, 12);
    }
    else if (dice == 4)
    {
      ellipse(myX+30, myY+30, 12, 12);
      ellipse(myX+30, myY+70, 12, 12);
      ellipse(myX+70, myY+30, 12, 12);
      ellipse(myX+70, myY+70, 12, 12);
    }
    else if (dice == 5)
    {
      ellipse(myX+30, myY+30, 12, 12);
      ellipse(myX+30, myY+70, 12, 12);
      ellipse(myX+70, myY+30, 12, 12);
      ellipse(myX+70, myY+70, 12, 12);
      ellipse(myX+50, myY+50, 12, 12);
    }
    else
    {
      ellipse(myX+30, myY+30, 12, 12);
      ellipse(myX+30, myY+70, 12, 12);
      ellipse(myX+50, myY+30, 12, 12);
      ellipse(myX+50, myY+70, 12, 12);
      ellipse(myX+70, myY+70, 12, 12);
      ellipse(myX+70, myY+30, 12, 12);
    }
  }
}
