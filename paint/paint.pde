color red = #F0340E;
color orange = #F0870E;
color yellow = #F0E80E;
color green = #4DBA49;
color blue = #2767B8;
color black = #000000;
color white = #FFFFFF;

//varialbes fr color selection
color selectedColor;

void setup(){
  size (800, 600);
  strokeWeight(2);
  stroke(black);
  background(white);
}

void draw(){
   //sidebar thing
  fill(160);
  rect(0,0,200,600);
  
  //buttons
  circleButton(red,50,50,40);
  circleButton(orange,50,100,40);
  circleButton(yellow, 100, 50, 40);
  circleButton(green, 100,100,40);
  circleButton(blue, 150,50,40);
  circleButton(black,150,100,40);
  
 
}

void circleButton(color a,int x, int y, int r){
  fill(a);
 circle(x, y, r);
}
