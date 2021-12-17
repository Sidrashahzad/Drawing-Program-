 
float bx;
float by;
int boxSize = 3;
boolean overBox = false;
boolean locked = false;
float xOffset = 0.0; 
float yOffset = 0.0; 
color grey=#CBBFCB;
color white2=#FAFAFA;
void eraseButtonsetup() {
 
  bx = displayWidth*1/20; 
  by = displayHeight*1/20;
  
  rectMode(RADIUS);  
}

void eraseButtondraw() { 
  background(0);
  
  // Test if the cursor is over the box 
  if (mouseX > bx-boxSize && mouseX < bx+boxSize && 
      mouseY > by-boxSize && mouseY < by+boxSize) {
    overBox = true;  
    if(!locked) { 
      stroke(5); 
      fill(grey);
    } 
  } else {
    stroke(5);
    fill(white2);
    overBox = false;
  }
  
  // Draw the box
  rect(bx, by, boxSize, boxSize);
}

void eraseButtonmousePressed() {
  if(overBox) { 
    locked = true; 
    fill(grey);
  } else {
    locked = false;
  }
  xOffset = mouseX-bx; 
  yOffset = mouseY-by; 

}

void eraseButtonmouseDragged() {
  if(locked) {
    bx = mouseX-xOffset; 
    by = mouseY-yOffset; 
  }
}

void eraseButtonmouseReleased() {
  locked = false;
}
