int total = 0;
int totalSum = 0;
void setup()
{
  size(600,600);
  noLoop();
  background(0);
}
void draw()
{
  background(0);
  //rows and columns
  for(int x = 0; x < 601; x = x + 55)
  {
    for(int y = 0; y < 459; y = y + 55)
    {
      //creates new die from class Die
      Die luck = new Die(x,y);
      luck.show();
      luck.roll();
    }
  }
  fill(255);
  textSize(25);
  text("Total: " + total,20,550);
  
  fill(255);
  textSize(25);
  text("Total After Every Click: " + totalSum,220,550);
}
void mousePressed()
{
  redraw(); 
  //reset total
  total = 0;
}
class Die //draws one die
{
  int dieX,dieY,dieRoll;
  Die(int x, int y) //constructor
  {
    dieX = x;
    dieY = y;
  }
  void show()
  {
    //die background
    fill(#FF0808);
    rect(dieX, dieY,48,48,7);
    
  }
  void roll()
  {
    //die dots
    //roll number
    dieRoll = (int)(Math.random()*6)+1;
    stroke(0);
    fill(0);
    //drawing the dots depending on dieRoll number
    if(dieRoll == 1)
    {
      ellipse(dieX+25,dieY+25,10,10);
      total = total + 1;
      totalSum = totalSum + 1;
    }
    else if(dieRoll == 2)
    {
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      total = total + 2;
      totalSum = totalSum + 2;
    }
    else if(dieRoll == 3)
    {
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+25, dieY+25, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      total = total + 3;
      totalSum = totalSum + 3;
    }
    else if(dieRoll == 4)
    {
      ellipse(dieX+15, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+35, dieY+15, 10, 10);
      total = total + 4;
      totalSum = totalSum + 4;  
    }
    else if(dieRoll == 5)
    {
      ellipse(dieX+15, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+35, dieY+15, 10, 10);
      ellipse(dieX+25, dieY+25, 10, 10);
      total = total + 5;
      totalSum = totalSum + 5;
    }
    else
    {
      ellipse(dieX+15, dieY+13, 10, 10);
      ellipse(dieX+15, dieY+25, 10, 10);
      ellipse(dieX+15, dieY+37, 10, 10);
      ellipse(dieX+35, dieY+13, 10, 10);
      ellipse(dieX+35, dieY+25, 10, 10);
      ellipse(dieX+35, dieY+37, 10, 10);
      total = total + 6;
      totalSum = totalSum + 6; 
    }
  }  
}
