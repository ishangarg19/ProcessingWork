/*
 Ishan Garg
 April 4, 2020
 Ms. Basaraba
 My program creates a christmas card with a blue-turquoise gradient background, snowman, text, etc. 
 using shapes and text only.
 */

int redishWhite = #E8E1E1, //Assigning hexadecimal color codes to variables for easier comprehension of program.
  red = #A21414, 
  black = #000000, 
  blueishWhite = #DADBE5, 
  orange = #FF7300, 
  darkBrown = #2C1905, 
  green = #29CB0A, 
  lightGrey = #D9D9D9, 
  darkGreen = #006C0B, 
  blue = #174BFF, 
  yellow = #EDEA00, 
  pink = #FF2EC1, 
  white = #FFFFFF, 
  caramel = #BC9E79, 
  lightBrown = #D3B894, 
  brown = #AA8761, 
  lightRed = #DB2E2E, 
  lightGreen = #93B64A, 
  darkYellow = #A5A300;

//Start of program
void setup()
{
  size(800, 500); //Sets screen size to 800x500 pixels

  drawGradientBackground(); //Creates background gradient using irregularly shaped ellipses (they are widely stretched so it gives the illusion of going blue-green-blue)
  drawDecorations(); //Draws the snowman, tree, candy canes, house, etc. by calling other methods                     
  drawText(); //Displays all the text on the card
}

void drawText()
{
  PFont merryChristmasFont = loadFont("VinerHandITC-90.vlw"); //Loads fonts
  PFont nameFont = loadFont("Leelawadee-Bold-15.vlw");

  textFont(merryChristmasFont); //Sets font to the italic font
  fill(red); //Sets text color to red
  text("Merry", 255, 380); //Draws "Merry"
  text("Christmas", 180, 475); //Draws "Christmas"

  textFont(nameFont); //Sets font to a classic font for name
  fill(black); //Sets name color to black
  text("Ishan Garg", 720, 490); //Draws my name
}

void drawDecorations()
{
  drawLights(); //Draws the christmas lights (drawn first so that it doesnt cover the snowman's hat)
  drawSnowman(); //Draws the snowman
  drawTree(); //Draws the tree
  drawHouse(); //Draws the house
  drawCandyCane(); //Draws left candy cane
  
  pushMatrix();
  translate(560, 0);
    drawCandyCane(); //Translates the left candy cane to the right candy cane
  popMatrix(); //I did this to make my program more efficient (40 less lines)

}

void drawSnowman()
{
  noStroke();

  fill(white);
  ellipse(400, 350, 180, 150); //Draws bottom body of snowman closest to text

  fill(white);
  ellipse(400, 210, 150, 150); //Draws the head of the snowman

  fill(orange);
  triangle(403, 210, 402, 225, 440, 220); //Draws carrot nose of snowman

  fill(black);
  ellipse(390, 195, 10, 10); //Draws left eye of snowman
  ellipse(425, 200, 10, 10); //Draws right eye of snowman

  stroke(darkBrown); 

  noFill();
  strokeWeight(2);
  arc(400, 235, 40, 20, radians(35), radians(170)); //Draws mouth of snowman

  noFill();
  strokeWeight(10);
  arc(465, 240, 130, 100, radians(-10), radians(98)); //Draws right arm of snowman
  arc(360, 347, 100, 116, radians(237), radians(258)); //Draws left arm of snowman

  noStroke();

  fill(lightGrey);
  rect(0, 300, width, 200); //Draws large grey rectangle at the bottom behind the text

  fill(redishWhite);
  quad(519, 225, 541, 230, 541, 243, 519, 238); //Draws bottom grey portion of right glove
  quad(315, 295, 346, 295, 346, 300, 315, 300); //Draws grey portion of left glove
  quad(343, 160, 470, 180, 470, 151, 352, 131); //Draws bottom grey rectangular portion of hat

  fill(red);
  bezier(521, 226, 516, 180, 544, 180, 542, 230); //Draws red finger portion of right glove
  bezier(518, 225, 511, 200, 525, 200, 521, 226); //Draws red thumb portion of right glove
  bezier(317, 297, 320, 315, 338, 315, 345, 297); //Draws red finger portion of left glove
  bezier(340, 298, 337, 310, 347, 310, 345, 298); //Draws red thumb portion of left glove
  bezier(355, 131, 375, 60, 465, 58, 467, 150); //Draws top red portion of hat

  fill(white);
  ellipse(425, 70, 30, 30); //Draws top white ball on hat

  quad(352, 130, 350, 135, 470, 151, 470, 146); //Draws topmost horizontal green stripe on hat
  quad(342, 158, 342, 163, 470, 181, 470, 176); //Draws bottommost horizontal green stripe on hat
  quad(352, 130, 343, 160, 346, 161, 355, 131); //First vertical green stripe on hat
  quad(358, 131, 349, 161, 352, 162, 361, 132); //Second vertical green stripe on hat
  quad(364, 132, 355, 162, 358, 163, 367, 133); //Third vertical green stripe on hat
  quad(370, 133, 361, 163, 364, 164, 373, 134); //Fourth vertical green stripe on hat
  quad(376, 134, 367, 164, 370, 165, 379, 135); //Fifth vertical green stripe on hat
  quad(382, 135, 373, 165, 376, 166, 385, 136); //And so on...
  quad(388, 136, 379, 166, 382, 167, 391, 137);
  quad(394, 137, 385, 167, 388, 168, 397, 138);
  quad(400, 138, 391, 168, 394, 169, 403, 139);
  quad(406, 139, 397, 169, 400, 170, 409, 140);
  quad(412, 140, 403, 170, 406, 171, 415, 141);
  quad(418, 141, 409, 171, 412, 172, 421, 142);
  quad(424, 142, 415, 172, 418, 173, 427, 143);
  quad(430, 143, 421, 173, 424, 174, 433, 144);
  quad(436, 144, 427, 174, 431, 175, 440, 145);
  quad(443, 145, 435, 175, 438, 176, 447, 146);
  quad(450, 146, 442, 176, 445, 177, 453, 147);
  quad(456, 147, 450, 177, 453, 178, 460, 148);
  quad(462, 148, 458, 178, 462, 180, 466, 148);
  quad(468, 149, 467, 179, 470, 181, 470, 149);
}

void drawTree()
{
  fill(darkBrown);
  rect(660, 270, 20, 30); //Draws trunk of tree

  fill(darkGreen);  
  arc(670,50,460,450,radians(70),radians(110)); //Draws green foliage of tree
  arc(670,50,310,300,radians(65),radians(115));
  arc(670,40,150,180,radians(55),radians(125));

  stroke(blueishWhite);
  strokeWeight(2.5);

  noFill();
  arc(670, 50, 100, 100, radians(55), radians(125)); //Draws the white rings on the tree
  arc(670, 50, 200, 200, radians(65), radians(115));
  arc(670, 50, 300, 300, radians(65), radians(115));
  arc(670, 50, 400, 400, radians(70), radians(110));

  noStroke();

  fill(red);
  ellipse(610, 252, 20, 20); //Draws all red ornaments
  ellipse(705, 208, 20, 20);
  ellipse(670, 110, 20, 20);

  fill(blue);
  ellipse(720, 254, 20, 20); //Draws all blue ornaments
  ellipse(650, 158, 20, 20);

  fill(yellow);
  ellipse(630, 206, 20, 20); //Draws all yellow ornaments
  ellipse(670, 260, 20, 20);  
  beginShape(); //Draws the star ornament
  vertex(653, 55);
  vertex(670, 8);
  vertex(687, 55);
  vertex(645, 25);
  vertex(695, 25);
  endShape(CLOSE);

  stroke(darkYellow);
  strokeWeight(2);

  line(653, 55, 669, 33);
  line(687, 55, 669, 33);
  line(645, 25, 669, 33);
  line(695, 25, 669, 33);
  line(670, 8, 669, 33);
  line(681,35,669,33);
  line(675,25,669,33);
  line(664,25,669,33);
  line(660,35,669,33);
  line(670,43,669,33);

  noStroke();  

  fill(green);
  ellipse(665, 210, 20, 20); //Draws all green ornaments
  ellipse(690, 159, 20, 20);

  fill(pink);
  rect(625, 280, 20, 20); //Draws all pink presents
  rect(685, 280, 20, 20);

  fill(yellow);
  rect(632.5, 280, 5, 20); //Draws yellow stripes and ribbon on first present
  rect(625, 287.5, 20, 5);
  quad(632.5, 280, 637.5, 280, 632, 275, 625, 275);
  quad(632.5, 280, 637.5, 280, 645, 275, 636, 275);

  rect(692.5, 280, 5, 20); //Draws yellow stripes and ribbon on second present
  rect(685, 287.5, 20, 5);
  quad(692.5, 280, 697.5, 280, 692, 275, 685, 275);
  quad(692.5, 280, 697.5, 280, 705, 275, 696, 275);
}

void drawCandyCane() //This is drawn at the end of drawDecorations(), not setup()
{
  fill(white);
  rect(75, 375, 20, 125); //Draws vertical base of left candy cane

  stroke(white);
  strokeWeight(20);

  noFill();
  arc(130, 372, 90, 100, radians(-180), radians(0)); //Draws curved hook of left candy cane

  noStroke();

  fill(red);
  quad(75, 490, 88, 500, 95, 495, 75, 480); //First red stripe on candy cane from the bottom
  triangle(88, 500, 95, 500, 95, 495); //Fills in bottom corner of first stripe
  quad(75, 460, 95, 475, 95, 465, 75, 450); //Second...
  quad(75, 430, 95, 445, 95, 435, 75, 420); //Third...
  quad(75, 400, 95, 415, 95, 405, 75, 390);
  quad(75, 370, 95, 385, 95, 375, 76, 360);
  quad(82, 345, 98, 360, 101, 350, 87, 335);
  quad(99, 323, 109, 341, 116, 336, 110, 317);
  quad(125, 313, 126, 333, 134, 333, 135, 313);
  quad(150, 316, 143, 335, 150, 339, 158, 320);
  quad(172, 332, 157, 346, 161, 353, 177, 340);
  quad(183, 353, 163, 358, 164, 365, 184, 360);
  arc(175, 373, 21, 20, radians(-10), radians(170));
}

void drawHouse()
{
  fill(caramel);
  beginShape(); //Draws house frame
  vertex(40, 300);
  vertex(27, 236);
  vertex(160, 65);
  vertex(288, 236);
  vertex(277, 300);
  endShape(CLOSE);

  fill(white);
  bezier(136, 300, 103, 210, 213, 210, 180, 300); //Draws frame of door

  fill(lightBrown);
  bezier(142, 300, 109, 216, 207, 216, 174, 300); //Fills in door 

  fill(brown);
  ellipse(144, 275, 5, 5); //Draws door knob
  quad(159, 224, 159, 218, 115, 239, 133, 239); //Draws two brown quads above door
  quad(159, 224, 159, 218, 200, 239, 182, 239);
  quad(27, 237, 16, 227, 160, 40, 160, 66); //Draws darker brown roof portion
  quad(288, 237, 299, 227, 160, 40, 160, 66);
  quad(58, 176, 95, 127, 95, 69, 58, 69); //Draws chimney

  fill(white);
  rect(70, 240, 32, 47); //Draws white portions of all three windows
  rect(215, 240, 32, 47);
  rect(144, 148, 32, 47);

  ellipse(35, 275, 16, 16); //Draws first circle snowball at base of house from left
  ellipse(38, 288, 16, 16); //Second from left
  ellipse(42, 299, 16, 16); //Third...
  ellipse(55, 300, 16, 16);
  ellipse(68, 300, 16, 16);
  ellipse(81, 300, 16, 16);
  ellipse(94, 300, 16, 16);
  ellipse(107, 300, 16, 16);
  ellipse(120, 300, 16, 16);
  ellipse(133, 300, 16, 16);
  ellipse(183, 300, 16, 16);
  ellipse(196, 300, 16, 16);
  ellipse(209, 300, 16, 16);
  ellipse(222, 300, 16, 16);
  ellipse(235, 300, 16, 16);
  ellipse(248, 300, 16, 16);
  ellipse(261, 300, 16, 16);
  ellipse(273, 299, 16, 16);
  ellipse(276, 288, 16, 16);
  ellipse(280, 275, 16, 16);

  stroke(white);
  noFill();

  strokeWeight(8);  
  arc(159, 232, 50, 20, radians(-150), radians(-30)); //Draws snow above door
  line(59, 69, 94, 69); //Draws snow on chimney

  strokeWeight(20);
  line(12, 220, 160, 30); //Draws snow on roof
  line(160, 30, 302, 220);

  strokeWeight(6);
  arc(31, 210, 44, 44, radians(0), radians(90)); //Draws the white arcs under the roof on left side
  arc(60, 175, 44, 44, radians(0), radians(90));
  arc(87, 142, 44, 44, radians(0), radians(90));
  arc(113, 108, 44, 44, radians(0), radians(90));
  arc(138, 75, 44, 44, radians(0), radians(90));

  arc(282, 209, 44, 44, radians(-270), radians(-180)); //Draws the white arcs under the roof on right side
  arc(254, 177, 44, 44, radians(-270), radians(-180));
  arc(229, 142, 44, 44, radians(-270), radians(-180));
  arc(202, 108, 44, 44, radians(-270), radians(-180));
  arc(180, 75, 44, 44, radians(-270), radians(-180));

  noStroke();

  fill(lightRed);
  ellipse(56, 203, 16, 16); //Draws the red circles all around/under the roof, connecting the white arcs
  ellipse(84, 166, 16, 16);
  ellipse(110, 133, 16, 16);
  ellipse(137, 100, 16, 16);
  ellipse(180, 100, 16, 16);
  ellipse(207, 133, 16, 16);
  ellipse(230, 168, 16, 16);
  ellipse(259, 201, 16, 16);

  fill(white);
  ellipse(107, 205, 32, 32); //Draws the white portions of the three candy cane-like circles
  ellipse(213, 205, 32, 32);
  ellipse(160, 60, 50, 50);

  fill(lightRed);
  arc(160, 60, 50, 50, radians(30), radians(60)); //Draws the red portions of the largest candy cane-like circle
  arc(160, 60, 50, 50, radians(90), radians(120));
  arc(160, 60, 50, 50, radians(150), radians(180));
  arc(160, 60, 50, 50, radians(210), radians(240));
  arc(160, 60, 50, 50, radians(270), radians(300));
  arc(160, 60, 50, 50, radians(330), radians(360));

  arc(107, 205, 32, 32, radians(30), radians(60)); //Draws the red portions of the left smaller candy cane-like circle
  arc(107, 205, 32, 32, radians(90), radians(120));
  arc(107, 205, 32, 32, radians(150), radians(180));
  arc(107, 205, 32, 32, radians(210), radians(240));
  arc(107, 205, 32, 32, radians(270), radians(300));
  arc(107, 205, 32, 32, radians(330), radians(360));

  arc(213, 205, 32, 32, radians(30), radians(60)); //Draws the red portions of the right smaller candy cane-like circle
  arc(213, 205, 32, 32, radians(90), radians(120));
  arc(213, 205, 32, 32, radians(150), radians(180));
  arc(213, 205, 32, 32, radians(210), radians(240));
  arc(213, 205, 32, 32, radians(270), radians(300));
  arc(213, 205, 32, 32, radians(330), radians(360));

  fill(brown);
  rect(73, 245, 10, 17); //Draws four brown portions of first window from left
  rect(88, 245, 10, 17);
  rect(73, 266, 10, 17);
  rect(88, 266, 10, 17); 
  rect(147, 153, 10, 17); //Draws four brown portions of second window from left
  rect(162, 153, 10, 17);
  rect(147, 174, 10, 17);
  rect(162, 174, 10, 17);  
  rect(218, 245, 10, 17); //Draws four brown portions of third window from left
  rect(233, 245, 10, 17);
  rect(218, 266, 10, 17);
  rect(233, 266, 10, 17);

  fill(lightRed);
  quad(57, 286, 70, 285, 70, 246, 57, 241); //Draws red parts of first window from left
  quad(102, 285, 115, 286, 115, 241, 102, 246);
  ellipse(85, 235, 10, 10);

  quad(131, 194, 144, 193, 144, 154, 131, 149); //Draws red parts of second window from left
  quad(177, 193, 190, 194, 190, 149, 177, 154);
  ellipse(159, 143, 10, 10);

  quad(202, 286, 215, 285, 215, 246, 202, 241); //Draws red parts of third window from left
  quad(247, 285, 260, 286, 260, 241, 247, 246);
  ellipse(230, 235, 10, 10);
  ellipse(159, 213, 10, 10); //Draws red circle above door

  fill(lightGreen);    
  triangle(81, 236, 80, 243, 77, 233); //Draws green leafs for first window from left
  quad(80, 243, 68, 248, 63, 235, 77, 233);
  triangle(58, 244, 63, 235, 68, 248);
  triangle(90, 235, 89, 242, 94, 232);
  quad(89, 242, 94, 232, 105, 234, 102, 247);
  triangle(111, 243, 105, 234, 102, 247);

  triangle(155, 144, 154, 151, 151, 141); //Draws green leafs for second window from left
  quad(154, 151, 142, 156, 137, 143, 151, 141);
  triangle(132, 152, 137, 143, 142, 156);
  triangle(164, 143, 163, 150, 168, 140);
  quad(163, 150, 168, 140, 179, 142, 176, 155);
  triangle(185, 151, 179, 142, 176, 155);

  triangle(226, 236, 225, 243, 222, 233); //Draws green leafs for third window from left
  quad(225, 243, 213, 248, 208, 235, 222, 233);
  triangle(203, 244, 208, 235, 213, 248);
  triangle(235, 235, 234, 242, 239, 232);
  quad(234, 242, 239, 232, 250, 234, 247, 247);
  triangle(256, 243, 250, 234, 247, 247);

  triangle(155, 214, 154, 221, 151, 211); //Draws green leafs above door
  quad(154, 221, 142, 226, 137, 213, 151, 211);
  triangle(132, 222, 137, 213, 142, 226);
  triangle(164, 213, 163, 220, 168, 210);
  quad(163, 220, 168, 210, 179, 212, 176, 225);
  triangle(185, 221, 179, 212, 176, 225);
}

void drawLights() //Draws the lights above the snowman
{
  stroke(darkGreen);
  strokeWeight(4);
  
  noFill();
  arc(390,0,250,50,radians(0),radians(180)); //Draws the wire
  
  noStroke();
  
  fill(darkGreen);
  quad(282,11,292,14,286,27,278,24); //Draws the green connecting portions of each light
  quad(328,21,338,22,337,35,327,35);
  quad(383,25,392,25,392,39,382,39);
  quad(434,25,447,24,448,38,437,38);
  quad(485,18,497,15,500,32,489,35);
  
  fill(yellow);
  pushMatrix();
  rotate(radians(15));
    ellipse(279,-27,25,50); //Draws the yellow light
  popMatrix();
  
  fill(pink);
  pushMatrix();
  rotate(radians(5));
  translate(55,52);
    ellipse(279,-27,25,50); //Draws the pink light
  popMatrix();
  
  fill(blue);
  pushMatrix();
  translate(109,85);
    ellipse(279,-27,25,50); //Draws the blue light
  popMatrix();
  
  fill(orange);
  pushMatrix();
  rotate(radians(-7));
  translate(156,137);
    ellipse(279,-27,25,50); //Draws the orange light
  popMatrix();
  
  fill(green);
  pushMatrix();
  rotate(radians(-15));
  translate(192,203);
    ellipse(279,-27,25,50); //Draws the green light
  popMatrix();
}

void drawGradientBackground() //This method creates the blue-green gradient background (it continues until end of program from here on because I wasnt sure if "for" loops were allowed)
{
  noStroke(); //Sets it so there is no stroke for gradient

  short widthDiameter = 1000; //Original width diameter of ellipse background 
  short heightDiameter = 1000; //Original height diameter of ellipse background
  short blueVal = 255; //Original blue value (starts at normal blue)
  short greenVal = 0; //Original green value(starts at black)

  fill(0, greenVal, blueVal); //Fills background with black (blue = 255, green = 0)
  ellipse(400, 200, widthDiameter, heightDiameter); //Draws irregular elliptical background gradient
  widthDiameter += 10; //Changes ellipse width and height so that next drawn ellipse is smaller with same origin to create gradient
  heightDiameter -= 10;
  blueVal -= 1; //Changes blue value so that the blue gets lighter
  greenVal += 3; //Changes green value to that the green gets lighter

  //*****86 REPETITIONS OF ABOVE 6 LINES FROM HERE ON******* 
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;

  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
  fill(0, greenVal, blueVal);   
  ellipse(400, 200, widthDiameter, heightDiameter);
  widthDiameter += 10;
  heightDiameter -= 10;
  blueVal -= 1;
  greenVal += 3;
  
}
//End of Program
