//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
Boolean nightMode=false;
//
size(1100, 800); //Landscape
//Copy Display Algorithm
appWidth = width;
appHeight = height;
//
//Aspect Ration of Background Image
//Obi-wan-star-wars-jedi-23864621-800-600.jpg
int picWidth = 800 ;
int picHeight = 600 ;
//Image Orientation: Landscape, Square, Portrait
if () {} else {}
//Population
pic = loadImage("../Images Used/Obi-wan-star-wars-jedi-23864621-800-600.jpg");
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
//Rectangular Layout and Image Drawing to CANVAS
rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
if ( nightMode == false) tint(255, 64); //use 1/2 tint value for white (i.e 128/256 = 1/2)
if ( nightMode == true) tint(64, 64, 30); //RGB: Night Mode
image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
