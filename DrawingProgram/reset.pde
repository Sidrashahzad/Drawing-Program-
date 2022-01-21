
float DrawingSurfaceX2, DrawingSurfaceY2, DrawingSurfaceWidth2, DrawingSurfaceHeight2;
float ButtonX9, ButtonY9, ButtonWidth9, ButtonHeight9;
String  resetButton ="Reset";
Boolean drawingRect=false;
//PFont titleFont2;


void resetButtonSetup(){
 ButtonX9= displayWidth*0;
 ButtonY9 =  displayHeight*1/8;
 ButtonWidth9=displayWidth*1/4; 
 ButtonHeight9=  displayHeight*1/8;
 
 DrawingSurfaceX2 = displayWidth*1/4; 
 DrawingSurfaceY2 =  displayHeight*0;
 DrawingSurfaceWidth2 = displayWidth*3/4;
 DrawingSurfaceHeight2 = displayHeight*7/8;

}

void resetButtondraw(){

 if (drawingRect==true)rect (DrawingSurfaceX2, DrawingSurfaceY2, DrawingSurfaceWidth2, DrawingSurfaceHeight2);
 strokeWeight(4);
 rect( ButtonX9, ButtonY9, ButtonWidth9, ButtonHeight9);
  fill(black);
 textAlign (CENTER, CENTER);
  textFont(titleFont,  40);
  text(resetButton,ButtonX9, ButtonY9, ButtonWidth9, ButtonHeight9 );
  fill(white);
  
  
  // Displays the image at point (0, height/2) at half of its size
 
}
void  resetButtonMousePressed(){
  {
    drawingRect=false;
if(mouseX >= ButtonX9   &&  mouseY >= ButtonY9 && mouseX <= ButtonX9+ButtonWidth9 && mouseY <= ButtonY9+ ButtonHeight9)  drawingRect=true ;}

}
void resetButtonkeyPressed(){}
