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

float QuitButtonX, QuitButtonY, QuitButtonWidth, QuitButtonHeight;


Boolean draw=false;












void setup() {

  fullScreen();
  Population();


  textsetup() ;


  rect(DrawingSurfaceX1, DrawingSurfaceY1, DrawingSurfaceWidth1, DrawingSurfaceHeight1);
}// end voidsetup()





void draw()
{

  if (draw == true && mouseX>DrawingSurfaceX1 && mouseX<DrawingSurfaceX1+DrawingSurfaceWidth1 &&  mouseY>DrawingSurfaceY1 && mouseY<DrawingSurfaceY1+DrawingSurfaceHeight1) 
  {
    line(mouseX,mouseY, pmouseX,pmouseY);
  }
  
  rect(rectX1, rectY1 ,rectWidth1, rectHeight1);
 rect(ButtonX1, ButtonY1, ButtonWidth1, ButtonHeight1);
 rect(ButtonX2, ButtonY2, ButtonWidth2, ButtonHeight2);
 rect(ButtonX3, ButtonY3, ButtonWidth3, ButtonHeight3);
 rect(ButtonX4, ButtonY4, ButtonWidth4, ButtonHeight4);
 rect(ButtonX5, ButtonY5, ButtonWidth5, ButtonHeight5);
 rect(ButtonX6, ButtonY6, ButtonWidth6, ButtonHeight6);
 rect(ButtonX7, ButtonY7, ButtonWidth7, ButtonHeight7);
 rect(ButtonX8, ButtonY8, ButtonWidth8, ButtonHeight8);
  
rect(QuitButtonX, QuitButtonY, QuitButtonWidth, QuitButtonHeight);
 
}//  end void draw()




void mousePressed() 
{
  if(mouseX>DrawingSurfaceX1 && mouseX<DrawingSurfaceX1+DrawingSurfaceWidth1 &&  mouseY>DrawingSurfaceY1 && mouseY<DrawingSurfaceY1+DrawingSurfaceHeight1)
 {
   if(draw==false) 
   { draw=true;
   } else{
   draw=false; }
 }
  
   
} // end void mousePressed()

void keyPressed() {
} // end void keyPressed() 
