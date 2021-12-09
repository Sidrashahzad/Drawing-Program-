
float rectX4, rectY4,rectWidth4,rectHeight4;
String shapeButton= "Shapes";
PFont titleFont1;



 void shapeButtonSetup()
 {  rectX4= displayWidth*0;
 rectY4= displayHeight*9/16;
 rectWidth4= displayWidth*1/4; 
 rectHeight4=displayHeight*1/5;
 
 
  titleFont = createFont("Harrington", 45);
 
 
 }
 
 
 
 
 
 
 
 
  void shapeButtonDraw()
  
  {
    rect(rectX4, rectY4,rectWidth4,rectHeight4);
    fill(black);
 textAlign (CENTER, TOP);
  textFont(titleFont, 40);
  text(shapeButton,rectX4, rectY4,rectWidth4,rectHeight4);
  fill(white);
  
 
  }
  
  
  
  void shapeButtonmousePressed(){}
