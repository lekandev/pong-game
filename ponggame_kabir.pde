//maxX = 1528, maxY = 720

float screenWidth = 1528; //set to your maxX
float screenHeight = 720; //set to your maxY

//position for the top left paddle

int rectX = 0;
int rectY = 0;

//position for the right bottom paddle

int rectX1 = 1496;
int rectY1 = 520;

//height and width of both paddles

int rectWidth = 30;
int rectHeight = 200;

//positon, height and width of the ellipse

int ballX = 750;
int ballY = 360;
int ballWidth = 40;
int ballHeight = 40;

//textsize

int textsize = 45;

//scores of both players

int score1 = 7;
int score2 = 34;

//position of scores of both players

int scoreX = 500;
int scoreY = 372;

//x positon of score2

int score2X = 980;
  
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
  
  rect(rectX, rectY, rectWidth, rectHeight);
  
  //for the right bottom bat
  stroke(255);
  
  fill(0, 78, 29);
  
  rect(rectX1, rectY1, rectWidth, rectHeight);
  
  //for the ball
  stroke(255);
  
  fill(255);
  
  ellipse(ballX, ballY, ballWidth, ballHeight);
  
  textSize(textsize);
  
  //the number scores
  fill(100);
  
  text(score1, scoreX, scoreY);
  
  text(score2, score2X, scoreY);
  
//movement of ball
  
ballX = ballX + 1;
ballY = ballY - 3;
  
}

