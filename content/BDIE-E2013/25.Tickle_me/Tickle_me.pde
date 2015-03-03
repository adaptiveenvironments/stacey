// For exhibition
// Title - Tickle me
// Pia Jensen - plje@itu.dk
// Original sketch: Tickle from the list of Java Examples in Processing
   // Path: Topics/Interaction/Tickle 
   
// Remix: 
// I have changed the txt to "tickle me" instead of just tickle
// When the mouse hovers over the txt it changes to "nooo, please stop!"
  // The colour changes to red as well 

/**
 * Tickle. 
 * 
 * The word "tickle" jitters when the cursor hovers over.
 * Sometimes, it can be tickled off the screen.
 */

// The next line is needed if running in JavaScript Mode with Processing.js
/* @pjs font="Georgia.ttf"; */

String message = "tickle me";
float x, y; // X and Y coordinates of text
float hr, vr;  // horizontal and vertical radius of the text
int colorRed = 155;

void setup() {
  size(640, 360);
  
  // Create the font
  textFont(createFont("Georgia", 36));
  textAlign(CENTER, CENTER);
  
  hr = textWidth(message) / 2;
  vr = (textAscent() + textDescent()) / 2;
  noStroke();
  x = width / 2;
  y = height / 2;
}

void draw() {
  // Instead of clearing the background, fade it by drawing
  // a semi-transparent rectangle on top
  fill(204, 120);
  rect(0, 0, width, height);
  
  // If the cursor is over the text, change the position
  if (abs(mouseX - x) < hr &&
      abs(mouseY - y) < vr) {
    x += random(-5, 5);
    y += random(-5, 5);
    fill(255,0,0);
    text("noooo, please stop!", x, y);    
  }
  
  else {
  fill(0);
  text("tickle me", x, y);
}
}
