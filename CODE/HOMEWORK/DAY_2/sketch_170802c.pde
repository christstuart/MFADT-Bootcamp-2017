// Variable to hold custom font
PFont f;

// Variable for input text
PFont inputFont;

// Variable to hold initial background
PImage backgroundImage; 

// Variable to store text currently being typed
String typing = "";

// Variable to store saved text when return is hit
String saved = "";

// Variable to store name
String name = "Chris";

// Variable to know when to stop writing
boolean stop = false;

// Variable to hold teamName
String teamName;

// Variable to store state of game
int state = 0;

// Indentation for text
int indent = 25;

// Array to hold game scripts
String[] texts = {
  "WELCOME TO FIFA DRAFT", 
  "What's your player name?",
  "Hey "
};

void setup() {
  backgroundImage = loadImage("initialBackground.jpg");
  f = createFont("BADABB__.TTF",30);
  inputFont = createFont("Arial",20);
  size(500,500);
  background(0);
  image(backgroundImage, 0, 0, 700, 500);
  textFont(f);
  textAlign(CENTER);
  text(texts[state], width / 2, height / 2);
  
  
}

void draw() {

  if (state == 1) {
      background(0);
      textAlign(LEFT);
      text(texts[state], indent, 60);
      textFont(f);
      text("Name: " + typing ,indent , 400); 
  }
  
  
}

void keyPressed() {
  // If the return key is pressed, save the String and clear it
  if (key == '\n' ) {
     name = typing;

     if (state == 1) {
       showStateTwo(); 
     }
     
  } else {
    // Otherwise, concatenate the String
    // Each character typed by the user is added to the end of the String variable.
   if (state > 0) {
    typing = typing + key; 
   }
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
     switch (state) {
      case 0:
      state = 1;
      print("First screen");
      break;
     }
     
    if (state == 2) {
     if (overRect(indent,350,140,140)) {
       showStateTwo();
       fill(0, 255, 0);
       text("Real Madrid" ,indent , 450); 
       teamName = "Real Madrid";
     } else if (overRect(indent + 190, 350, 140, 140)) {
       showStateTwo();
       fill(0, 255, 0);
       text("Barcelona" ,indent + 190 , 450);
       teamName = "Barcelona";
     } else if (overRect(indent + 370, 350, 140, 140)) {
       showStateTwo();
       fill(0, 255, 0);
       text("NYC" ,indent + 370 , 450);
       teamName = "NYC";
     }
  }
     
  }
}

void showStateTwo() {
        state = 2;
        fill(255);
        background(0);
        textAlign(LEFT);
        text(texts[state]  + name + ", \nyou are about to embark into an \n amazing journey in the Soccer World", indent, 60);
        typing = "";
        text("Pick your team:" ,indent , 350); 
        text("Real Madrid" ,indent , 450); 
        text("Barcelona" ,indent + 190 , 450);
        text("NYC" ,indent + 370 , 450);
}

boolean overRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x + width && 
      mouseY >= y && mouseY <= y + height) {
    return true;
  } else {
    return false;
  }
}