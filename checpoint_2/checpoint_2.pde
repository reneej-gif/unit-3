//pallette of oclors
color cream = #FCFBE3;
color lightBrown = #DDCAAA;
color mediumBrown = #BC8542;
color darkBrown = #9F642C;
color darkestBrown = #6E3722;
color white=#FFFFFF;

//varialbes fr color selection
color selectedColor;

void setup() {
  size (800, 600);
  strokeWeight(5);
  stroke(darkestBrown);
  selectedColor = darkBrown;
}

void draw() {
  background(cream);

  //buttons
  tactile(200,300,450,550);
  fill(lightBrown);
  rect(200,450,100,100);

  tactile(350,450,450,550);
  fill(mediumBrown);
  rect(350,450,100,100);

  tactile(500,600,450,550);
  fill(darkBrown);
  rect(500,450,100,100);

  //indicator
  stroke(darkestBrown);
  fill(selectedColor);
  rect(200, 50, 400, 350);
}

void tactile(int x,int y, int r,int a){
  if(mouseX>x && mouseX<y && mouseY>r && mouseY<a){
    stroke(white);
  }else{
    stroke(darkestBrown);
  }
}
  
  
void mouseReleased() {
  //lighbrown button
  if (mouseX>200 && mouseX<300 && mouseY>450 && mouseY<550) {
    selectedColor=lightBrown;
  }
  //mediumbr button 
  if (mouseX>350 && mouseX<450 && mouseY>450 && mouseY<550) {
    selectedColor=mediumBrown;
  }
  //darkbrowon
  if (mouseX>500 && mouseX<600 && mouseY>450 && mouseY<550) {
    selectedColor=darkBrown;
  }
}
