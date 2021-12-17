
float rectX4, rectY4,rectWidth4,rectHeight4;
float squareX, squareY, squareWidth, squareHeight;
float circleX,circleY,CircleDiameter;
float triangleX1,triangleY1 ,triangleX2,triangleY2,triangleX3,triangleY3;
String shapeButton= "Shapes";
PFont titleFont1;



 void shapeButtonSetup()
 {  rectX4= displayWidth*0;
 rectY4= displayHeight*9/16;
 rectWidth4= displayWidth*1/4; 
 rectHeight4=displayHeight*1/5;
 
 
  titleFont = createFont("Harrington", 45);
 
squareX = displayWidth*1/40;
squareY=displayHeight*10/16;
squareWidth= displayWidth*1/16; 
squareHeight=displayHeight*1/16;
 
circleX =  displayWidth*5/40;
circleY = displayHeight*11/16;
CircleDiameter= displayWidth*1/20; 
 
triangleX1 = displayWidth*8/40;
triangleY1=displayHeight*10/16;
triangleX2 = displayWidth*7/40;
triangleY2=displayHeight*11/16;
triangleX3 = displayWidth*9/40;
triangleY3=displayHeight*11/16;
 
 
 
 }
 
 
 
 
 
 
 
 
  void shapeButtonDraw()
  
  {
    rect(rectX4, rectY4,rectWidth4,rectHeight4);
    fill(black);
 textAlign (CENTER, TOP);
  textFont(titleFont, 40);
  text(shapeButton,rectX4, rectY4,rectWidth4,rectHeight4);
  fill(white);
  rect(squareX, squareY, squareWidth, squareHeight); 
 ellipse(circleX,circleY,CircleDiameter,CircleDiameter); 
 triangle(triangleX1,triangleY1 ,triangleX2,triangleY2,triangleX3,triangleY3);
  }
  
  
  
  void shapeButtonmousePressed(){}
