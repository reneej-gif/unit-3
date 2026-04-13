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

void setup() {
  size (800, 600);
  strokeWeight(2);
  background(white);
  selectedColor=black;
  sliderY=300;
}

void draw() {
  //sidebar thing
  noStroke();
  fill(160);
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
  tactile(70, sliderY);
  circle(70, sliderY, 20);
}


void mousePressed() {
  controlslider();
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void controlslider() {
  if (mouseX > 45 && mouseX<95 && mouseY>250 && mouseY< 400) {
    sliderY=mouseY;
  }
}
void circleButton(color a, int x, int y, int r) {
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
}
void mouseDragged() {
  controlslider();

  if (mouseX > 140) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}
