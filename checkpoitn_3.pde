color reed = #FF0000;
float sliderY;
float r;

void setup() {
  size(800, 600);
  strokeWeight(5);
  stroke(255);
  fill(reed);
  sliderY = 100;
}

void draw() {
  background(0);
  line(100, 100, 100, 500);
  circle(100, sliderY, 50);

  circle(500, 300, r);
  r=map(sliderY,100,500,0,500);
}

void mouseDragged() {
  controlslider();
}

void mousePressed() {
  controlslider();
}

void controlslider() {
  if (mouseX > 75 && mouseX<125 && mouseY>100 && mouseY< 500) {
    sliderY=mouseY;
  }
}
