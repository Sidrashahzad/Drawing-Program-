//Global Variables 
float DrawingSurfaceX1, DrawingSurfaceY1, DrawingSurfaceWidth1, DrawingSurfaceHeight1;
float rectX1, rectY1 ,rectWidth1, rectHeight1;

float ButtonX1, ButtonY1, ButtonWidth1, ButtonHeight1;
float ButtonX2, ButtonY2, ButtonWidth2, ButtonHeight2;
float ButtonX3, ButtonY3, ButtonWidth3, ButtonHeight3;
float ButtonX4, ButtonY4, ButtonWidth4, ButtonHeight4;
float ButtonX5, ButtonY5, ButtonWidth5, ButtonHeight5;
float ButtonX6, ButtonY6, ButtonWidth6, ButtonHeight6;
float ButtonX7, ButtonY7, ButtonWidth7, ButtonHeight7;
float ButtonX8, ButtonY8, ButtonWidth8, ButtonHeight8;
float ButtonX9, ButtonY9, ButtonWidth9, ButtonHeight9;
float lineX,lineY,lineWidth,lineHeight;
float rectX2, rectY2 ,rectWidth2, rectHeight2;
float rectX3, rectY3,rectWidth3,rectHeight3;
float rectX5 , rectY5 ,rectWidth5 ,rectHeight5;
color black=#0F0F0F;
color white= #FFFFFF ;
color red=#FF1717;
color yellow=#FFF81A;
color green=#4EFF1A;
color skyBlue=#1ADBFF;
color blue =#1A49FF;
color purple =#C11AFF;
color pink=#FF08C2;
Boolean draw=false;





void setup() {

  fullScreen();
 
  Population(); 
  QuitButtonSetup ();
  QuitButtonDraw ();

  shapeButtonSetup();
 
  
  ImageButtonSetup();
  ImageButtondraw();
  
/*  eraseButtonsetup();
 eraseButtondraw();
 eraseButtonmousePressed(); 
  eraseButtonmouseDragged();
  eraseButtonmouseReleased();*/
rect (DrawingSurfaceX1, DrawingSurfaceY1, DrawingSurfaceWidth1, DrawingSurfaceHeight1);
}





void draw() {
shapeButtonDraw();
 ImageButtondraw();
QuitButtonDraw ();


  if (draw == true && mouseX>DrawingSurfaceX1 && mouseX<DrawingSurfaceX1+DrawingSurfaceWidth1 &&  mouseY>DrawingSurfaceY1 && mouseY<DrawingSurfaceY1+DrawingSurfaceHeight1) 
  {
    line(mouseX,mouseY, pmouseX,pmouseY);
  }
  
  rect(rectX1, rectY1 ,rectWidth1, rectHeight1);
  
 fill(black);
 rect(ButtonX1, ButtonY1, ButtonWidth1, ButtonHeight1);
 fill(reset);
 fill(red);
 rect(ButtonX2, ButtonY2, ButtonWidth2, ButtonHeight2);
 fill(reset);
 fill(yellow);
 rect(ButtonX3, ButtonY3, ButtonWidth3, ButtonHeight3);
 fill(reset);
 fill(green);
 rect(ButtonX4, ButtonY4, ButtonWidth4, ButtonHeight4);
 fill(reset);
 fill(skyBlue);
 rect(ButtonX5, ButtonY5, ButtonWidth5, ButtonHeight5);
 fill(reset);
 fill(blue);
 rect(ButtonX6, ButtonY6, ButtonWidth6, ButtonHeight6);
 fill(reset);
 fill(purple);
 rect(ButtonX7, ButtonY7, ButtonWidth7, ButtonHeight7);
 fill(reset);
 fill(pink);
 rect(ButtonX8, ButtonY8, ButtonWidth8, ButtonHeight8);
  fill(reset);
  
 rect(ButtonX9, ButtonY9, ButtonWidth9, ButtonHeight9); 
  rect(rectX2, rectY2 ,rectWidth2, rectHeight2);
rect(rectX3, rectY3,rectWidth3,rectHeight3);
rect(rectX5 , rectY5 ,rectWidth5 ,rectHeight5);

}




void mousePressed() {

  if(mouseX>DrawingSurfaceX1 && mouseX<DrawingSurfaceX1+DrawingSurfaceWidth1 &&  mouseY>DrawingSurfaceY1 && mouseY<DrawingSurfaceY1+DrawingSurfaceHeight1)
 {
   if(draw==false) 
   { draw=true;
   } else{
   draw=false; }
 }
 
 
 if(mouseX> ButtonX1  &&  mouseY> ButtonY1 && mouseX< ButtonX1+ButtonWidth1 && mouseY < ButtonY1+ButtonHeight1){
   stroke(black);
    fill(reset);
 }


  if(mouseX > ButtonX2 && mouseY> ButtonY2  && mouseX< ButtonX2+ButtonWidth2  && mouseY < ButtonY2+ButtonHeight2){
    stroke(red);
    fill(reset);
  }

 if(mouseX > ButtonX3 &&  mouseY> ButtonY3 && mouseX< ButtonX3+ButtonWidth3 && mouseY < ButtonY3+ButtonHeight3){
    stroke(yellow);
  }
  
  
  if(mouseX > ButtonX4 &&  mouseY> ButtonY4 && mouseX< ButtonX4+ButtonWidth4  && mouseY < ButtonY4+ButtonHeight4){
    stroke(green);
  }
  
  
    if(mouseX > ButtonX5 &&  mouseY> ButtonY5 &&  mouseX< ButtonX5+ButtonWidth4   && mouseY < ButtonY5+ButtonHeight5){
    stroke(skyBlue);
  }
 
  if(mouseX > ButtonX6  &&  mouseY> ButtonY6 &&  mouseX< ButtonX6+ButtonWidth6   && mouseY < ButtonY6 +ButtonHeight6){
    stroke(blue);
  }
 
 
  if(mouseX > ButtonX7 &&  mouseY> ButtonY7  &&  mouseX< ButtonX7+ButtonWidth7  && mouseY < ButtonY7+ButtonHeight7){
    stroke(purple);
  }
 
 if(mouseX > ButtonX8  &&  mouseY> ButtonY8  &&  mouseX< ButtonX8 +ButtonWidth8   && mouseY < ButtonY8+ButtonHeight8){
    stroke(pink);
  }
 
 
  if(mouseX>=QuitButtonX && mouseX <= QuitButtonX+QuitButtonWidth && mouseY>= QuitButtonY &&  mouseY<= QuitButtonY+QuitButtonHeight) exit();
 
   
}

 

 

 
  
  
 


void keyPressed() {
} // end void keyPressed() 
