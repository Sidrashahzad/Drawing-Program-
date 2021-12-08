/*
PFont ptFont;
color purple = #DE0AFF; //Not nice for Night Mode
//Global variables


void textsetup() 
{
  println("Start of Console");
 
//String[] fontList = PFont.list(); //To list all fonts available on system
//printArray(fontList); //For listing all possible fonts to choose, then createFont
ptFont = createFont ("Harrington", 55); //Verify font exists
//Tools / Create Font / Find Font / Do Not Press "OK", known bug
}// end void textSetup() 

void textDrawPre()

{
//Laying out text space and tyopgraphical Features

//Drawing Text
fill(purple); //Ink, hexidecimal copied from Color Selector
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont( ptFont, 40);
//textFont() has option to combine font declaration with textSize()

}

// end void textDrawPre ()

void  textDraw1()
{
textDrawPre();
text( QuitButton, QuitButtonX, QuitButtonY, QuitButtonWidth, QuitButtonHeight);
textDrawPost();
//Space for more rectangles below, with reset values
}
// end void  textDraw1();


void textDrawPost()
{
fill(white);
}


// end  void DrawPost()*/
