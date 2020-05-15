//maxX = 1528, maxY = 720

float screenWidth = 1528; //set to your maxX
float screenHeight = 720; //set to your maxY

void setup() //runs once
{
  fullScreen(); //Sets the program to run in full screen mode
  
}

void draw() //runs forever
{
  background(30); //color of the background
  
  //for the top left bat
  stroke(255);
  
  fill(0, 78, 29);
  
  rect(0, 0, 30, 200);
  
  //for the right bottom bat
  stroke(255);
  
  fill(0, 78, 29);
  
  rect(1496, 520, 30, 200);
  
  //for the ball
  stroke(255);
  
  fill(255);
  
  ellipse(750, 360, 40, 40);
  
  textSize(45);
  
  //the number scores
  fill(100);
  
  text("7", 500, 372);
  
  text("34", 980, 372);
}
