/* Example Subprogram
 Purpose: to reuse code by passing parameters to voids (void does not return)
 Reason: simplifies code, no more copying and pasting code to reuse
 Reminder: design of parameters are important, here string and size are passed only
*/

PFont  pFont;
//Not nice for Night Mode
//
void textsetup() 
{
  println("Start of Console");
 
//String[] fontList = PFont.list(); //To list all fonts available on system
//printArray(fontList); //For listing all possible fonts to choose, then createFont
pFont = createFont ("Harrington", 55); //Verify font exists
//Tools / Create Font / Find Font / Do Not Press "OK", known bug
}// end void textSetup() 

void textDrawPre()

{
//Laying out text space and tyopgraphical Features

//Drawing Text
fill(purple); //Ink, hexidecimal copied from Color Selector
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont( pFont, 40);
//textFont() has option to combine font declaration with textSize()

}

// end void textDrawPre ()
