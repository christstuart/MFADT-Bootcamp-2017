 import processing.sound.*;
 SoundFile file; 
  // Variable to hold custom font
  PFont f;
  
  // Variable for input text
  PFont inputFont;
  
  // Variable to hold initial background
  PImage backgroundImage; 
  
  // Variable to hold player
  PImage player;
  
  // Variable to holdGround
  PImage ground;
  
  //Variable for enemy
  PImage zombie;
  
  // Player x
  int playerX;
  
  // Enemy X
  int enemyX;
  
  // Variable to store text currently being typed
  String typing = "";
  
  // Variable to store saved text when return is hit
  String saved = "";
  
  // Variable to store name
  String name = "Chris";
  
  // Variable to know when to stop writing
  boolean stop = false;
  
  // Variable to hold firstValue
  String firstValue;
  
  // Variable to store state of game
  int state = 0;
  
  // Indentation for text
  int indent = 25;
  
  // To move
  int move;
  
  // Array to hold game scripts
  String[] texts = {
    "PHANTASMAS", 
    "What's your player name?",
    "Hey "
  };
  
  void setup() {
    file = new SoundFile(this, "bgmusic.wav");
    file.play();
    backgroundImage = loadImage("background.png");
    ground = loadImage("ground.png");
    f = createFont("DK Face Your Fears II.ttf",100);
    player = loadImage("player.png");
    zombie = loadImage("zombie.png");
    move = -15;
    inputFont = createFont("Arial",20);
    playerX = 20;
    size(667, 500);
    background(0);
    textFont(f);
    textAlign(CENTER);
    createBackground();
    text(texts[state], width / 2, height / 2 - 60);
    textSize(20);
    text("Click to \n start", width / 2 + 250, height / 2 + 100);
    
  }
  
  void draw() {
  
    
  }
  
  void keyPressed() {
    // If the return key is pressed, save the String and clear it
    
   if(key == CODED) {
      if (keyCode == RIGHT) {
        print("work");
        playerX += 5;
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
        move = -15;
        state = 1;
        print("First screen");
        createBackground();
        textFont(f);
        textAlign(CENTER);
        textSize(40);
        text("You have an enemy coming at \n you!!!", width / 2, height / 2 - 100);
        textSize(20);
        text("A. SCREAM LOAD", width / 2 + 230, height / 2 + 60);
        text("B. FIGHT HIM", width / 2 + 230, height / 2 + 130);
        break;
        case 1:
         if (overRect(width / 2 + 110,height / 2 + 30,200,40)) {
           fill(0, 255, 0);
           text("A. SCREAM LOUD", width / 2 + 230, height / 2 + 60);
           firstValue = "A";
           playerX += 40;
           showStateTwoDummy();
           state = 2;
         } else if (overRect(width / 2 + 110, height / 2 + 30, 200, 110)) {
           fill(0, 255, 0);
           text("B. FIGHT HIM", width / 2 + 230, height / 2 + 130); 
           firstValue = "B";
           playerX += 40;
           showStateTwo();
           image(zombie, playerX + 500, 290, 90, 150);
           state = 2;
         }
         break;
         case 2:
           playerX += 20;
           showStateTree();
           image(zombie, playerX + 430, 290, 90, 150);
           state = 3;
         break;
         case 3:
           playerX += 30;
           showStateFoar();
           image(zombie, playerX + 370, 290, 90, 150);
           state = 4;
           break;
         case 4:
           print("state 4");
           if (overRect(width / 2,height / 2 + 30,200,40)) {
              print("A");
              showEndGame("A");
              state = 5;
           } else if (overRect(width / 2, height / 2 + 30, 200, 110)) {
             print("B");
             showEndGame("B");
             state = 5;
           }
           break;
           
       }
       
       
     
    }
  }
  
  void showStateTwoDummy() {
        background(0);
        createBackground();
        textFont(f);
        textAlign(CENTER);
        textSize(40);
        fill(255);
        text("THERE'S STILL A ZOMBIE", width / 2, height / 2 - 100);
  }
  
  void showStateTwo() {
        background(0);
        createBackground();
        textFont(f);
        textAlign(CENTER);
        textSize(40);
        fill(255);
        text("LOOK AT THE END OF THE SCREEN", width / 2, height / 2 - 100);
  }
  
  void showStateTree() {
        background(0);
        createBackground();
        textFont(f);
        textAlign(CENTER);
        textSize(40);
        fill(255);
        text("WHAT DO WE DO? !!!!!!!", width / 2, height / 2 - 100);
  }
  
  void showStateFoar() {
        background(0);
        createBackground();
        textFont(f);
        textAlign(CENTER);
        textSize(40);
        fill(255);
        text("Quick decide,\n he's getting closer", width / 2, height / 2 - 100);
        textSize(20);
        text("A. SHOOT HIM", width / 2, height / 2 + 60);
        text("B. I'LL JUST DIE", width / 2, height / 2 + 130);
  }
  
  
  void createBackground() {
    image(backgroundImage, 0, 0, 700, 500);
    image(player,playerX ,290, 60, 150);
    move = -15;
    for (int i = 0; i < 10; i++) {
      image(ground, move, 410, 100, 100);
      move += 80;
    }
  }
  
  void showEndGame(String value) {
    
    image(backgroundImage, 0, 0, 700, 500);
        move = -15;
        for (int i = 0; i < 10; i++) {
          image(ground, move, 410, 100, 100);
          move += 80;
        }
        textFont(f);
        textAlign(CENTER);
        textSize(60);
        fill(255);
        
    if (value == "A") {
        text("GOOD JOB, YOU WIN \n \n THE END", width / 2, height / 2 - 50);
      } else {
        text("BOO, YOU SUCK\n \n THE END", width / 2, height / 2 - 50);
    }
    
     
  }
  
  
  
  boolean overRect(int x, int y, int width, int height) {
    if (mouseX >= x && mouseX <= x + width && 
        mouseY >= y && mouseY <= y + height) {
      return true;
    } else {
      return false;
    }
  }