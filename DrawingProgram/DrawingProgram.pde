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

float rectX2, rectY2 ,rectWidth2, rectHeight2;
float rectX3, rectY3,rectWidth3,rectHeight3;

color white= #FFFFFF ;
color red=#FF1717;
color orange=#FF981A;
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
  shapeButtonDraw();
  
  ImageButtonSetup();
  ImageButtondraw();
  
/*   eraseButtonsetup();
  eraseButtondraw();
  eraseButtonmousePressed(); 
  eraseButtonmouseDragged();
  eraseButtonmouseReleased();*/
rect (DrawingSurfaceX1, DrawingSurfaceY1, DrawingSurfaceWidth1, DrawingSurfaceHeight1);
}





void draw()
{

  if (draw == true && mouseX>DrawingSurfaceX1 && mouseX<DrawingSurfaceX1+DrawingSurfaceWidth1 &&  mouseY>DrawingSurfaceY1 && mouseY<DrawingSurfaceY1+DrawingSurfaceHeight1) 
  {
    line(mouseX,mouseY, pmouseX,pmouseY);
  }
  
  rect(rectX1, rectY1 ,rectWidth1, rectHeight1);
  
 fill(red);
 rect(ButtonX1, ButtonY1, ButtonWidth1, ButtonHeight1);
 fill(reset);
 fill(orange);
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
// ellipse
}




void mousePressed() 
{
  if(mouseX>DrawingSurfaceX1 && mouseX<DrawingSurfaceX1+DrawingSurfaceWidth1 &&  mouseY>DrawingSurfaceY1 && mouseY<DrawingSurfaceY1+DrawingSurfaceHeight1)
 {
   if(draw==false) 
   { draw=true;
   } else{
   draw=false; }
 }
 
 
 if(mouseX>ButtonX1  && mouseX<ButtonX1+ButtonWidth1 && mouseY>ButtonY1 &&  mouseY>ButtonY1+ButtonHeight1);
 
  if(mouseX>=QuitButtonX && mouseX <= QuitButtonX+QuitButtonWidth && mouseY>= QuitButtonY &&  mouseY<= QuitButtonY+QuitButtonHeight) exit();
 
 
 
}

 

 

 
  
  
   


void keyPressed() {
} // end void keyPressed() 
