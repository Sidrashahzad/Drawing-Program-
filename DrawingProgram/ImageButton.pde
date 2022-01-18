PImage img;

float imageStartWidth, imageStartHeight, imageWidth, imageHeight;
float imageWidthRatio, imageHeightRatio;
float  ButtonX10,ButtonY10, ButtonWidth10, ButtonHeight10;
String IMAGEButton= "IMAGES";
//PFont titleFont2;


void ImageButtonSetup(){
 ButtonX10= displayWidth*0;
 ButtonY10=displayHeight*6/8;
 ButtonWidth10= displayWidth*2/8; 
 ButtonHeight10=displayHeight*1/9;
 
//  resize( 0, DrawingSurfaceWidth1, DrawingSurfaceHeight1);
  img = loadImage("hand-painted-watercolor-background-with-sky-clouds-shape_24972-1095.jpg");  // Load the image into the program
 
}

void ImageButtondraw(){


rect(ButtonX10,ButtonY10, ButtonWidth10,ButtonHeight10);
  fill(black);
 textAlign (CENTER, CENTER);
  textFont(titleFont, 40);
  text(IMAGEButton, ButtonX10,ButtonY10, ButtonWidth10,ButtonHeight10);
  fill(white);
  
  
  // Displays the image at point (0, height/2) at half of its size
 
}
void  ImageButtonMousePressed(){}


void ImageButtonkeyPressed(){}
