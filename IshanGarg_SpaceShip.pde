/*
  Ishan Garg
  May 11, 2020
  Ms. Basaraba
  My program will create a flying spaceship that 
  will change direction towards a different end of the screen
  */
  
float spaceshipX = 100; //The spaceship coordinates (used in translate function)
float spaceshipY = 150;
float speedX = 5; //The spaceship speed for X and Y
float speedY = 0;
int rectX = 0; //The window origin coordinates
int rectY = 0;
float angle = 0; //Rotation angle 
int adjustY; //Adjusts y-coordinate after some rotations, as the spaceship is not a regular shape - remove to see what I mean if you are confused
int rectWidth; //The width and height of window screen
int rectHeight;

void setup() //Main program (Single-run)
{
  size(800,500); //Sets window size to 800x500 pixels
  noStroke();
  rectWidth = width; //The width and height of window screen are assigned here
  rectHeight = height;
}

void draw() //Main program (Looped)
{
  spaceshipX += speedX; //Changes x 
  spaceshipY += speedY; //Changes y
  
  myBackground(); //Draws the background   
    
  if(spaceshipX+100 >= rectX + rectWidth) //If the ship hits the right edge of screen...
  {        
   speedX = -5; //Make ship go left
   speedY = 3; //Make it go diagonally down
   angle = 135; //Makes ship face the direction its travelling
   adjustY = 100; //Alters the drawing of the ship as if it is bouncing off
   
  }
  else if(spaceshipX+100 <= rectX+200) //If the ship hits the left edge of screen...
  {        
   speedX = 5; //Make ship go right
   speedY = 0; //Make it go straight
   angle  = 0; //No rotation of ship
   adjustY = -100; //Adjusts y
  }
  else if(spaceshipY+50 >= rectY + rectHeight-90) //If the ship hits the bottom edge of screen...
  {        
   speedX = 1.5; //Make ship go right
   speedY = -3; //Make ship go up
   angle  = 290; //Matches direction angle
   adjustY = 0; //No adjustment needed
  }
  else if(spaceshipY <= rectX+100) //If the ship hits the top edge of screen...
  {        
   speedX = -5; //Make ship go left
   speedY = 2; //Make ship go down
   angle  = 155; //Matches direction angle
   adjustY = 0; //No adjustment needed
  }
  
   pushMatrix();
   translate(spaceshipX,spaceshipY+adjustY); //Sets location of origin to ship coordinates
   rotate(radians(angle)); //Rotates ship to face travelling direction
   flyingSpaceShip(); //Draws ship
   popMatrix();
  
}

void myBackground() //Draws my background (planets and space)
{
  background(#292750); //Draws navy background
  
  stroke(#DEE307); //These five lines draw the yellow "rings" on the planets
  strokeWeight(10);
  line(125,350,295,250);
  line(525,300,675,400);
  line(340,100,510,100);
  
  noStroke(); //Removes stroke again
  
  fill(#E307D5); 
  ellipse(200,300,100,100); //Draws pink planet
  fill(#07E322);
  ellipse(600,350,100,100); //Draws green planet
  fill(#E30733);
  ellipse(425,100,100,100); //Draws red planet
}

void flyingSpaceShip() //Draws spaceship
{
  fill(#4E4F50); //Draws the two dark grey weapons on the spaceship
  rect(0,20,80,10);
  rect(0,70,80,10);
  
  fill(#A5A9AA); //Draws the grey main part of spaceship
  triangle(0,0,0,100,100,50);
  
  fill(#E0E0E0); //Draws the light grey-white portion of spaceship on top of main ship
  triangle(0,20,0,80,100,50);
  
  fill(#F50207); //Draws the red hatch and engine parts of space ship
  ellipse(50,50,40,20);
  triangle(0,25,0,50,-50,25);
  triangle(0,75,0,50,-50,75);
  
}
