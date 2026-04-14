color red = #F0340E;
color orange = #F0870E;
color yellow = #F0E80E;
color green = #4DBA49;
color blue = #2767B8;
color black = #000000;
color white = #FFFFFF;
float sliderY;
float r;

//varialbes fr color selection
color selectedColor;

PImage fish;
boolean fishOn; //true or false

void setup() {
  size (800, 600);
  strokeWeight(2);
  background(white);
  selectedColor=black;
  sliderY=300;
  fish = loadImage("so.png");
  fishOn = false;
}

void draw() {
  strokeWeight(2);
  //sidebar thing
  noStroke();
  fill(100);
  rect(0, 0, 140, 600);
  stroke(0);

  //buttons
  circleButton(red, 40, 40, 40);
  circleButton(orange, 40, 90, 40);
  circleButton(yellow, 100, 40, 40);
  circleButton(green, 100, 90, 40);
  circleButton(blue, 40, 140, 40);
  circleButton(black, 100, 140, 40);

  //indicator
  stroke(10);
  fill(selectedColor);
  circle(70, 200, r);
  r=map(sliderY, 250, 400, 1, 50);

  //slider
  fill(0);
  stroke(25);
  line(70, 250, 70, 400);
  circleButton(black,70,sliderY,20);
  

  //stamp
  tactile2(20,420,40,40);
  strokeWeight(1);
  rect(20, 420, 40, 40);
  image(fish, 20, 420, 40, 40);
}

void mouseDragged() {
  controlslider();
  if (mouseX > 140) {
    stroke(selectedColor);
    strokeWeight(r);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
  if(fishOn == false){
    //squiggly line
    strokeWeight(5);
    stroke(black);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }else{
    //draw 
    image(fish, mouseX,mouseY,100,100);
  }
}

void mousePressed() {
  controlslider();

  if (mouseX > 140) {
    stroke(selectedColor);
    strokeWeight(r);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

void controlslider() {
  if (mouseX > 45 && mouseX<95 && mouseY>250 && mouseY< 400) {
    sliderY=mouseY;
  }
}
void circleButton(color a, int x, float y, float r) {
  tactile(x, y);
  fill(a);
  circle(x, y, r);
}
void tactile(int x, float y) {
  if (dist(x, y, mouseX, mouseY)<20) {
    stroke(white);
  } else {
    stroke(black);
  }
}

void tactile2(int x, int y, int w, int h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }
}

void mouseReleased() {
  if (dist(40, 40, mouseX, mouseY)<20) {
    selectedColor = red;
  }
  if (dist(40, 90, mouseX, mouseY)<20) {
    selectedColor=orange;
  }
  if (dist(40, 140, mouseX, mouseY)<20) {
    selectedColor=blue;
  }
  if (dist(100, 90, mouseX, mouseY)<20) {
    selectedColor=green;
  }
  if (dist(100, 40, mouseX, mouseY)<20) {
    selectedColor=yellow;
  }
  if (dist(100, 140, mouseX, mouseY)<20) {
    selectedColor=black;
  }
  //drawstamp thing
  //if(
}
