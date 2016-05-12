//This sub handles the win conditions
void win() {
  background(0);
  fill(128, 125, 0);
  rect(100, 100, width-200, height-200);
  fill(255);
  textAlign(CENTER);
  textSize(30);
  text("You win!", width/2, height/2);
  //Draws quit button
  fill(255, 0, 128);
  rect(300, 500, 200, 100, 25);
  fill(255);
  text("Quit", width/2, 560);
  win = true;
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    cursor(HAND);
  } else {
    cursor(NORMAL);
  }
}