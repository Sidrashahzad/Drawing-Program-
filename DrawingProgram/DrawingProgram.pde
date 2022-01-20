//liabrary
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

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

float lineX,lineY,lineWidth,lineHeight;
float rectX2, rectY2 ,rectWidth2, rectHeight2;
float rectX3, rectY3,rectWidth3,rectHeight3;
float rectX5 , rectY5 ,rectWidth5 ,rectHeight5;
float triX1,  triY1, triX2, triY2, triX3, triY3;

float stopX,stopY,stopWidth,stopHeight;
float  triX4,  triY4, triX5, triY5, triX6, triY6;
float  playX1,playY1,playWidth1, playHeight1;
float lineX1,lineY1, lineWidth1,lineHeight1;
float lineX2 ,lineY2, lineWidth2,lineHeight2;
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

Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3



void setup() {

  fullScreen();
 
 
  minim = new Minim (this);
  song1 = minim.loadFile("Somewhere Fuse - French Fuse.mp3");
  Population(); 
  QuitButtonSetup ();
  QuitButtonDraw ();

  shapeButtonSetup();
 
  
  ImageButtonSetup();
  
  
  resetButtonSetup();
  
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
resetButtondraw();

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
  
 
  rect(rectX2, rectY2 ,rectWidth2, rectHeight2);
rect(rectX3, rectY3,rectWidth3,rectHeight3);
rect(rectX5 , rectY5 ,rectWidth5 ,rectHeight5);

//play-pause
fill(black);
rect(playX1,playY1,playWidth1, playHeight1);
fill(reset);
triangle(triX4,  triY4, triX5, triY5, triX6, triY6);

// stop

rect( stopX,stopY,stopWidth,stopHeight);
// line
line(5,50,95,50);
}




void mousePressed() {

  resetButtonMousePressed();
   ImageButtonMousePressed();
  if(mouseX>DrawingSurfaceX1 && mouseX<DrawingSurfaceX1+DrawingSurfaceWidth1 &&  mouseY>DrawingSurfaceY1 && mouseY<DrawingSurfaceY1+DrawingSurfaceHeight1)
 {
   if(draw==false) 
   { draw=true;
   } else{
   draw=false; }
 }
 
 
 if(mouseX> ButtonX1  &&  mouseY> ButtonY1 && mouseX< ButtonX1+ButtonWidth1 && mouseY < ButtonY1+ButtonHeight1){
   strokeWeight(4);
   stroke(black);
    fill(reset);
 }


  if(mouseX > ButtonX2 && mouseY> ButtonY2  && mouseX< ButtonX2+ButtonWidth2  && mouseY < ButtonY2+ButtonHeight2){
    strokeWeight(4);
    stroke(red);
    fill(reset);
  }

 if(mouseX > ButtonX3 &&  mouseY> ButtonY3 && mouseX< ButtonX3+ButtonWidth3 && mouseY < ButtonY3+ButtonHeight3){
   
   strokeWeight(4);
   stroke(yellow);
  }
  
  
  if(mouseX > ButtonX4 &&  mouseY> ButtonY4 && mouseX< ButtonX4+ButtonWidth4  && mouseY < ButtonY4+ButtonHeight4){
   strokeWeight(4);
    stroke(green);
  }
  
  
    if(mouseX > ButtonX5 &&  mouseY> ButtonY5 &&  mouseX< ButtonX5+ButtonWidth4   && mouseY < ButtonY5+ButtonHeight5){
      strokeWeight(4);
    stroke(skyBlue);
  }
 
  if(mouseX > ButtonX6  &&  mouseY> ButtonY6 &&  mouseX< ButtonX6+ButtonWidth6   && mouseY < ButtonY6 +ButtonHeight6){
   
    strokeWeight(4);
    stroke(blue);
  }
 
 
  if(mouseX > ButtonX7 &&  mouseY> ButtonY7  &&  mouseX< ButtonX7+ButtonWidth7  && mouseY < ButtonY7+ButtonHeight7){
   strokeWeight(4);
    stroke(purple);
  }
 
 if(mouseX > ButtonX8  &&  mouseY> ButtonY8  &&  mouseX< ButtonX8 +ButtonWidth8   && mouseY < ButtonY8+ButtonHeight8){
    strokeWeight(4);
   stroke(pink);
  }
 
 
 if(mouseX > rectX5  &&  mouseY> rectY5  &&  mouseX<rectX5 + rectWidth5   && mouseY < rectY5+rectHeight5 ){
    strokeWeight(4);
   stroke(reset);
   fill(reset);
  }
 
 
 
 
  if(mouseX>=QuitButtonX && mouseX <= QuitButtonX+QuitButtonWidth && mouseY>= QuitButtonY &&  mouseY<= QuitButtonY+QuitButtonHeight) exit();
 
 if (mouseX>=playX1 && mouseX <= playX1+playWidth1 && mouseY>= playY1 &&  mouseY<= playY1+playHeight1) {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length()-2000 ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
   
   
   if (mouseX>=stopX && mouseX <= stopX+stopWidth && mouseY>= stopY  &&  mouseY<= stopY+stopHeight) {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else { //Song is not playing
      song1.rewind();
    }
}
}
//



 
  
  
 


void keyPressed() {
  resetButtonkeyPressed();
} // end void keyPressed() 
