/*
  Programmer: Ishan Garg
  Date of Creation: May 26, 2020
  
  This program will assist in creating shapes by drawing an
  interactive version that, when moved, will provide the 
  coordinates hat can then be used in programming, meaning
  no guesswork.
  
  The bezier curve is an adapted version of Simon, Jeffery, and Ibrahim's
  Copy Cat Workshop bezier demo.
  */

PFont arial; //Font
int p0x = 300; //The bezier values for each of the four points
int p0y = 250;
int p1x = 367;
int p1y = 100;
int p2x = 434;
int p2y = 100;
int p3x = 500;
int p3y = 250;

int originX = 400; //The coordinate values for the ellipse 
int originY = 200;
int button1X = 80;
int button1Y = 400;
int button2X = 150;
int button2Y = 400;
int button3X = 80;
int button3Y = 460;
int button4X = 150;
int button4Y = 460;
int wid = 150;
int hei = 150;

int p1X = 250; //The coordinate values for the quad
int p1Y = 100;
int p2X = 450;
int p2Y = 100;
int p3X = 450;
int p3Y = 200;
int p4X = 250;
int p4Y = 200;

int startTextX = 40; //The coordinate values for the starting text
int startTextY = 385;

boolean bezierRun = false;
boolean quadRun = false;
boolean ellipseRun = false;
boolean instructions = true;
byte runFirst = 0;

void shapeCreator()
{
  
  arial = createFont("Arial",16,true); //Declares font
  strokeWeight(2);
  
  if(keyPressed && key == '1')
  {
    bezierRun = true;
    runFirst = 1;
    instructions = false;
  }
  else if(keyPressed && key == '2')
  {
    quadRun = true;
    runFirst = 2;
    instructions = false;
  }
  else if(keyPressed && key == '3')
  {
    ellipseRun = true;
    runFirst = 3;
    instructions = false;
  } 
  
  if(bezierRun && runFirst == 1)
    bezierCreator();
  else if(quadRun && runFirst == 2)
    quadCreator();
  else if(ellipseRun && runFirst == 3)
    ellipseCreator();
    
  if(instructions)
  {
    fill(200,30,50);
    textFont(arial);
    text("Press 1 to start Bezier Creator",startTextX+10,startTextY+25);
    text("Press 2 to start Quad Creator",startTextX+10,startTextY+65);
    text("Press 3 to start Ellipse Creator",startTextX+10,startTextY+105);
  }
  else
  {
    if(keyPressed && key == '4' && bezierRun == true)
    {
      bezierRun = false;
      instructions = true;
    }
    if(keyPressed && key == '4' && quadRun == true)
    {
      quadRun = false;
      instructions = true;
    }
    if(keyPressed && key == '4' && ellipseRun == true)
    {
      ellipseRun = false;
      instructions = true;
    }
   
   fill(200,30,50);
   textFont(arial);
   if(bezierRun && runFirst == 1)
     text("Press 4 to end Bezier Creator",startTextX+10,startTextY+25);
   if(quadRun && runFirst == 2)
     text("Press 4 to end Quad Creator",startTextX+10,startTextY+25);
   if(ellipseRun && runFirst == 3)
     text("Press 4 to end Ellipse Creator",startTextX+10,startTextY+25); 
  }
  
  
  rectMode(CENTER);
  noStroke();
  fill(255,40,40);
  rect(startTextX,startTextY,10,10);
  
  rectMode(CORNER);
  startTextMove();
  
  textFont(arial,16);
  text("("+mouseX+", "+mouseY+")",720,470);
}

void startTextMove()
{
  if(dist(startTextX,startTextY,mouseX,mouseY) <= 20)
  {
    stroke(0);
    if(mousePressed)
    {
      startTextX = mouseX;
      startTextY = mouseY;
    }
  }
}


void bezierCreator() //Will say true of false if a background is needed
{
 
 fill(#000000);
   
  coordinateDisplay();
  controlP1(); //Creates control point 1
  controlP2(); //Creates control point 2
  
  stroke(255);
  strokeWeight(5);
  noFill();
  bezier(p0x, p0y, p1x, p1y, p2x, p2y, p3x, p3y); //Creates the interactive bezier curve

  anchorP1(); //Creates anchor 1

  fill(255, 150);
  rectMode(CENTER);
  rect(p0x, p0y, 5, 5); //draws anchor 1
  
  fill(255, 150);
  anchorP2(); //Creates anchor 2
  
  rectMode(CENTER);
  rect(p3x, p3y, 5, 5); //Draws anchor 2

  rectMode(CORNER); //Resets rect mode
  
  if(keyPressed && key == 'r') //Will reset bezier position if 'R' is pressed
  {
    p0x = 300;
    p0y = 250;
    p1x = 367;
    p1y = 100;
    p2x = 434;
    p2y = 100;
    p3x = 500;
    p3y = 250;
  }
}

void anchorP1() //Will move anchor 1 if the mouse is pressed over it
{

  if (dist(p0x, p0y, mouseX, mouseY) < 10) 
  {
    stroke(0);
    if (mousePressed) 
    {
      p0x = mouseX;
      p0y =mouseY;
    }
  }
}
void anchorP2() //Will move anchor 2 if the mouse is pressed over it
{

  if (dist(p3x, p3y, mouseX, mouseY) < 10) 
  {
    stroke(0);
    if (mousePressed) 
    {
      p3x = mouseX;
      p3y =mouseY;
    }
  }
}

void controlP1() //Will move control 1 if the mouse is pressed over it
{
  
  stroke(90);
  strokeWeight(0.5);
  line(p0x, p0y, p1x, p1y); //Draws control 1 with connecting line
  rectMode(CENTER);
  rect(p1x, p1y, 5, 5);
  
  
  if (dist(p1x, p1y, mouseX, mouseY) < 8) //Checks if cursor is over it and if mouse is pressed
  {
    stroke(0);
    if (mousePressed) 
    {
      p1x = mouseX;
      p1y =mouseY;
    }
  }
}

void controlP2() //Will move control 2 if the mouse is pressed over it
{
  
  stroke(90);
  strokeWeight(0.5);
  line(p2x, p2y, p3x, p3y); //Draws control 2 with connecting line
  rectMode(CENTER);
  rect(p2x, p2y, 5, 5);
  
  
  if (dist(p2x, p2y, mouseX, mouseY) < 8) //Checks if cursor is over it and if mouse is pressed
  {
    stroke(0);
    if (mousePressed) 
    {
      p2x = mouseX;
      p2y = mouseY;
    }
  }
}

void coordinateDisplay() //Displays the coordinates of bezier points, along with drawing command and resetting instructions
{
  textFont(arial);
  text("Anchor Point 1 = " +p0x+","+p0y,50,100);
  text("Control Point 1 = " +p1x+","+p1y,50,140);
  text("Control Point 2 = " +p2x+","+p2y,50,180);
  text("Anchor Point 2 = " +p3x+","+p3y,50,220);
  text("bezier("+p0x+","+p0y+","+p1x+","+p1y+","+p2x+","+p2y+","+p3x+","+p3y+");",50,270);
  text("Press 'R' to reset bezier", 600,50);
}


void ellipseCreator()
{
  arial = createFont("arial", 16, true);
  noFill();
  stroke(255);
  
  origin();
  control();
  
  fill(255, 150);
  rectMode(CENTER);
  rect(originX, originY, 5, 5); //draws origin
  ellipseMode(RADIUS);
  
  ellipse(button1X,button1Y,25,25);
  
  ellipse(button2X,button2Y,25,25);
  
  ellipse(button3X,button3Y,25,25);
  
  ellipse(button4X,button4Y,25,25);
  
  noFill();
  stroke(255);
  ellipse(originX,originY,wid/2,hei/2);
  
  vertexDisplay();
  
  rectMode(CORNER);
  ellipseMode(CENTER);
  
  if(keyPressed && key == 'e')
  {
    originX = 400;
    originY = 200;
    wid = 150;
    hei = 150;
  }
}

void origin()
{
  if (dist(originX, originY, mouseX, mouseY) < 25) 
  {
    stroke(0);
    if (mousePressed) 
    {
      originX = mouseX;
      originY = mouseY;
    }
  }
}

void control()
{
  if (dist(button1X,button1Y, mouseX, mouseY) < 25) 
  {
    stroke(0);
    if (mousePressed) 
    {
      wid++;
    }
  }
  if (dist(button2X,button2Y, mouseX, mouseY) < 25) 
  {
    stroke(0);
    if (mousePressed) 
    {
      hei++;
    }
  }
  if (dist(button3X,button3Y, mouseX, mouseY) < 25) 
  {
    stroke(0);
    if (mousePressed) 
    {
      wid--;
    }
  }
  if (dist(button4X,button4Y, mouseX, mouseY) < 25) 
  {
    stroke(0);
    if (mousePressed) 
    {
      hei--;
    }
  }
}


void vertexDisplay()
{
  textFont(arial);
  fill(0);
  text("Origin = "+originX+", "+originY, 50, 100);
  text("Width Diameter = "+wid, 50, 140);
  text("Height Diameter= "+hei, 50, 180);
  text("ellipse("+originX+","+originY+","+wid+","+hei+");",50,260);
  text("Press E to reset ellipse", 600,50);
  text("Width      Height",56,365);
  textFont(arial,30);
  text("+",button1X-8,button1Y+8);
  text("+",button2X-8,button2Y+8);
  text("-",button3X-6,button3Y+8);
  text("-",button4X-6,button4Y+8);

}


void quadCreator()
{
  arial = createFont("arial",16,true); //Declares font
  fill(#000000);
  stroke(255);
  
  point1();
  point2();
  point3();
  point4();
  
  fill(255, 150);
  rectMode(CENTER);
  rect(p1X, p1Y, 5, 5); //draws point 1
  
  
  fill(255, 150);
  rectMode(CENTER);
  rect(p2X, p2Y, 5, 5); //draws point 2
  
  
  fill(255, 150);
  rectMode(CENTER);
  rect(p3X, p3Y, 5, 5); //draws point 3
  
  
  fill(255, 150);
  rectMode(CENTER);
  rect(p4X, p4Y, 5, 5); //draws point 4
  
  stroke(255);
  line(p1X, p1Y,p2X, p2Y);
  line(p2X, p2Y,p3X, p3Y);
  line(p3X, p3Y,p4X, p4Y);
  line(p1X, p1Y,p4X, p4Y);
  
  rectMode(CORNER);
  coordDisplay();
  
  if(keyPressed && key == 'q')
  {
    p1X = 250;
    p1Y = 100;
    p2X = 450;
    p2Y = 100;
    p3X = 450;
    p3Y = 200;
    p4X = 250;
    p4Y = 200;
  }
}

void point1()
{
  if (dist(p1X, p1Y, mouseX, mouseY) < 8) 
  {
    stroke(0);
    if (mousePressed) 
    {
      p1X = mouseX;
      p1Y =mouseY;
    }
  }
}

void point2()
{
  if (dist(p2X, p2Y, mouseX, mouseY) < 8) 
  {
    stroke(0);
    if (mousePressed) 
    {
      p2X = mouseX;
      p2Y =mouseY;
    }
  }
}

void point3()
{
  if (dist(p3X, p3Y, mouseX, mouseY) < 10) 
  {
    stroke(0);
    if (mousePressed) 
    {
      p3X = mouseX;
      p3Y =mouseY;
    }
  }
}

void point4()
{
  if (dist(p4X, p4Y, mouseX, mouseY) < 10) 
  {
    stroke(0);
    if (mousePressed) 
    {
      p4X = mouseX;
      p4Y =mouseY;
    }
  }
}

void coordDisplay()
{
  textFont(arial);
  fill(0);
  text("Point 1 = "+p1X+", "+p1Y, 50, 100);
  text("Point 2 = "+p2X+", "+p2Y, 50, 140);
  text("Point 3 = "+p3X+", "+p3Y, 50, 180);
  text("Point 4 = "+p4X+", "+p4Y, 50, 220);
  text("quad("+p1X+","+p1Y+","+p2X+","+p2Y+","+p3X+","+p3Y+","+p4X+","+p4Y+");",50,260);
  text("Press Q to reset quad", 600,50);

}
