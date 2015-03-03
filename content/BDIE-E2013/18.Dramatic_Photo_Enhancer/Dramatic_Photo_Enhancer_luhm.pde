/* Edited P_4_1_2_01.pde
LUCAS MALLING, Super Dramatic Enhancer

*/


import java.util.Calendar;

PImage img;
int count = 1;

void setup() {
  size(800, 450);
  background(255);
  img = loadImage("pic.jpg");
  img.resize(width, height);
  image(img,0,0);
}

void draw() {
  /*int x1 = (int) random(0, width);
  int y1 = 0;

  int x2 = round(x1 + random(-7, 7));
  int y2 = round(random(-5, 5));

  int w = (int) random(35, 50);
  int h = height;*/
  copy(0,0, round(width+random(-1, 1)),round(height+random(-.6, .6)), 0,0, round(width+random(-1, 1)), round(height+random(-0.01,0.01)));
  count++;

  if(count == 15) {
    image(img, 0, 0);
  img.resize(width, height);  
    count = 1;
  }
}

void keyReleased() {
  if(keyCode == DELETE || keyCode == BACKSPACE) {
    background(255);
    image(img,0,0);
  }
  if(key=='s' || key=='S') saveFrame(timestamp()+"_##.png");
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

// P_4_1_2_01.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/**
 * image feedback process.
 * 
 * KEYS
 * del, backspace      : clear screen
 * s                   : save png
 */

