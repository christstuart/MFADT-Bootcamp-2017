/*
  First homework assignment for CODE
*/

float inititalPosition;


void setup() {
  // We are assigning the size of the canvas
  size(400, 180);
  // Applying color to canvas
  background(255, 255, 255);
  // Calling the function create mario
  createMarioHat();
  // Calling the function createFaceAnHair
  createFaceAndHair();
  
  fill(255, 0, 0, 0);
  stroke(0,0,0,0);
  rect(90, 20, 240, 140);
  
}

void draw() {
  
  if (overRect(90,20,240,140)) {
    print("workes");
    textSize(32);
    fill(255, 0, 0);
    text("Mario", width / 2 + 100, height / 2 + 80);
    background(255);
  } else {
     createMarioHat();
  // Calling the function createFaceAnHair
  createFaceAndHair();
  }
  
  
}

void createFaceAndHair() {
  
   /*
  In this function we will create marios face
  */
  
  // Lets start by creating the hat
  
  
  fill(139, 69, 32);
  rect(110, 60, 20, 20);
  rect(130, 60, 20, 20);
  rect(150, 60, 20, 20);
  fill(255, 228, 196);
  rect(170, 60, 20, 20);
  rect(190, 60, 20, 20);
  rect(210, 60, 20, 20);
  fill(0);
  rect(230, 60, 20, 20);
  fill(255, 228, 196);
  rect(250, 60, 20, 20);
  fill(139, 69, 32);
  
  rect(90, 80, 20, 20);
  fill(255, 228, 196);
  rect(110, 80, 20, 20);
  fill(139, 69, 32);
  rect(130, 80, 20, 20);
  fill(255, 228, 196);
  rect(150, 80, 20, 20);
  rect(170, 80, 20, 20);
  rect(190, 80, 20, 20);
  rect(210, 80, 20, 20);
  fill(0);
  rect(230, 80, 20, 20);
  fill(255, 228, 196);
  rect(250, 80, 20, 20);
  rect(270, 80, 20, 20);
  rect(290, 80, 20, 20);
  
  fill(139, 69, 32);
  rect(90, 100, 20, 20);
  fill(255, 228, 196);
  rect(110, 100, 20, 20);
  fill(139, 69, 32);
  rect(130, 100, 20, 20);
  rect(150, 100, 20, 20);
  fill(255, 228, 196);
  rect(170, 100, 20, 20);
  rect(190, 100, 20, 20);
  rect(210, 100, 20, 20);
  rect(230, 100, 20, 20);
  fill(0);
  rect(250, 100, 20, 20);
  fill(255, 228, 196);
  rect(270, 100, 20, 20);
  rect(290, 100, 20, 20);
  rect(310, 100, 20, 20);
  
  fill(139, 69, 32);
  rect(90, 120, 20, 20);
  rect(110, 120, 20, 20);
  fill(255, 228, 196);
  rect(130, 120, 20, 20);
  rect(150, 120, 20, 20);
  fill(255, 228, 196);
  rect(170, 120, 20, 20);
  rect(190, 120, 20, 20);
  rect(210, 120, 20, 20);
  fill(0);
  rect(230, 120, 20, 20);
  rect(250, 120, 20, 20);
  rect(270, 120, 20, 20);
  rect(290, 120, 20, 20);
  
   fill(255, 228, 196);
  rect(130, 140, 20, 20);
  rect(150, 140, 20, 20);
  rect(170, 140, 20, 20);
  rect(190, 140, 20, 20);
  rect(210, 140, 20, 20);
  rect(230, 140, 20, 20);
  rect(250, 140, 20, 20);
  rect(270, 140, 20, 20);
  
}

void createMarioHat() {
  
  /*
  In this function we will create marios hat
  */
  
  // Lets start by creating the hat
  
  fill(255, 0, 0);
  rect(130, 20, 20, 20);
  rect(150, 20, 20, 20);
  rect(170, 20, 20, 20);
  rect(190, 20, 20, 20);
  rect(210, 20, 20, 20);
  rect(230, 20, 20, 20);
  
  
  rect(110, 40, 20, 20);
  rect(130, 40, 20, 20);
  rect(150, 40, 20, 20);
  rect(170, 40, 20, 20);
  rect(190, 40, 20, 20);
  rect(210, 40, 20, 20);
  rect(230, 40, 20, 20);
  rect(250, 40, 20, 20);
  rect(270, 40, 20, 20);
  rect(290, 40, 20, 20);
  
}

boolean overRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x + width && 
      mouseY >= y && mouseY <= y + height) {
    return true;
  } else {
    return false;
  }
}