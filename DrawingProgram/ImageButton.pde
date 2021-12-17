float  ButtonX10,ButtonY10, ButtonWidth10, ButtonHeight10;
String IMAGEButton= "IMAGES";
//PFont titleFont2;


void ImageButtonSetup(){
 ButtonX10= displayWidth*0;
 ButtonY10=displayHeight*6/8;
 ButtonWidth10= displayWidth*2/8; 
 ButtonHeight10=displayHeight*1/9;
}

void ImageButtondraw(){


rect(ButtonX10,ButtonY10, ButtonWidth10,ButtonHeight10);
  fill(black);
 textAlign (CENTER, TOP);
  textFont(titleFont, 40);
  text(IMAGEButton, ButtonX10,ButtonY10, ButtonWidth10,ButtonHeight10);
  fill(white);
}
void  ImageButtonMousePressed(){}


void ImageButtonkeyPressed(){}
