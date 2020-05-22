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

//speed of balls

int xSpeed = -8;
int ySpeed = 9;

//ball radius = ball height and width/2

int radius = 20;

//textsize

int textsize = 45;

//scores of both players

int player1score = 0;
int player2score = 0;

//position of scores of both players

int scoreX = 500;
int scoreY = 372;

//x positon of score2

int score2X = 980;

//boolean variable

boolean gameOn = false;
  
void setup() //runs once
{
  fullScreen(); //Sets the program to run in full screen mode
  
}

void draw() //runs forever
{
  if(mousePressed){
    gameOn = true;
  }
  
  background(60); //color of the background
  
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
  
  //Move ball
  if(gameOn){
    ballX = ballX+xSpeed;
    ballY = ballY+ySpeed;
  }
  
  //Check if ball hits top or bottom walls
  if ((ballY-radius < 0) || (ballY+radius) > screenHeight) {

    ySpeed = ySpeed * -1;  //Reverse direction
  }
  
  textSize(textsize);
  
  //the number scores
  fill(100);
  
  text(player1score, scoreX, scoreY);
  
  text(player2score, score2X, scoreY);
  
  //increment player1score
  
  if(ballX > screenWidth){
    
    player1score = player1score + 1;
    
  }
  
  //increment player2score
  
  if(ballX < 0){
    
    player2score = player2score + 1;
    
  }
  
  //stop game
  if((ballY > screenWidth) || (ballX > screenWidth) || (ballX < 0) || (ballY < 0)){
    
    ballX = 764;
    ballY = 360;
    gameOn = false;
    
  }
  
}

