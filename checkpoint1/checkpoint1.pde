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
  if (dist(200, 500, mouseX, mouseY)<50) {
    stroke(white);
  } else {
    stroke(darkestBrown);
  }

  fill(lightBrown);
  circle(200, 500, 100);

  if (dist(400, 500, mouseX, mouseY)<50) {
    stroke(white);
  } else {
    stroke(darkestBrown);
  }
  fill(mediumBrown);
  circle(400, 500, 100);

  if (dist(600, 500, mouseX, mouseY)<50) {
    stroke(white);
  } else {
    stroke(darkestBrown);
  }

  fill(darkBrown);
  circle(600, 500, 100);

  //indicator
  stroke(darkestBrown);
  fill(selectedColor);
  rect(200, 50, 400, 350);
}

void mouseReleased() {
  //lighbrown button
  if (dist(200, 500, mouseX, mouseY)<50) {
    selectedColor=lightBrown;
  }
  //mediumbr button
  if (dist(400, 500, mouseX, mouseY)<50) {
    selectedColor=mediumBrown;
  }
  //darkbrowon
  if (dist(600, 500, mouseX, mouseY)<50) {
    selectedColor=darkBrown;
  }
}
