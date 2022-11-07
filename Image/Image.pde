//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float smallerDimension, LargerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;// float must be a dec i.e. 0.0 not 0
Boolean widthLarger=false, heightLarger=false;
PImage pic;
Boolean nightMode=false;
//
size(600, 300); //Landscape
//Copy Display Algorithm
appWidth = width;
appHeight = height;
//
//Aspect Ration of Background Image
//Obi-wan-star-wars-jedi-23864621-800-600.jpg
int picWidth = 800 ;
int picHeight = 600 ;
//Image Orientation: Landscape, Square, Portrait
if ( picWidth >= picHeight ) { //True If: Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //False if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth ;
  heightLarger = true;
}
//
//Aspect Ratio Calculations
if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
//Population
pic = loadImage("../Images Used/Obi-wan-star-wars-jedi-23864621-800-600.jpg");
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
//Adjust Image Variables for Apsect Ratio 
float picWidthAdjusted, picHeightadjusted;
picWidthAdjusted = backgroundImageWidth * imageWidthRatio;
picHeightadjusted = backgroundImageHeight * imageHeightRatio;
//Rectangular Layout and Image Drawing to CANVAS
//rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
if ( nightMode == false) tint(255, 64); //use 1/2 tint value for white (i.e 128/256 = 1/2)
if ( nightMode == true) tint(64, 64, 30); //RGB: Night Mode
image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightadjusted);
