//Global Variable
float QuitButtonX, QuitButtonY, QuitButtonWidth, QuitButtonHeight;
float  titleX, titleY, titleWidth, titleHeight;
color QuitbuttonColour, Grey=#DEDEDE,darkgrey=#9B9B90, reset=white;
String quitButton ="Exit";
PFont titleFont ;
color black=#0F0F0F;

void QuitButtonSetup()

{
QuitButtonX = displayWidth* 0;
 QuitButtonY = displayHeight* 14/16;
 QuitButtonWidth = displayWidth * 1/4;
 QuitButtonHeight  = displayHeight* 1/8;

 titleFont = createFont("Harrington", 55);
 
 titleX = displayWidth*0;
 titleY = displayHeight* 14/16;
 titleWidth = displayWidth* 1/4;
 titleHeight = displayHeight* 1/8;
//textDraw1();
}

void QuitButtonDraw()
{
  
 println(mouseX, mouseY);

 if(mouseX >=  QuitButtonX  &&  mouseY >= QuitButtonY && mouseX <= QuitButtonX+QuitButtonWidth && mouseY <= QuitButtonY+QuitButtonHeight)
  {
    QuitbuttonColour =  Grey;
  } else {
    QuitbuttonColour = darkgrey ;
  }
    
 fill(QuitbuttonColour);
 rect(QuitButtonX, QuitButtonY, QuitButtonWidth, QuitButtonHeight);
 fill(reset);
 fill(black);
 textAlign (CENTER, CENTER);
  textFont(titleFont, 40);
  text( quitButton, titleX, titleY, titleWidth, titleHeight );
  fill(white);
 
 
}
void QuitButtonMousePressed()
{
 
 
 }
