//This sub handles all the mouse click events
void mouseClicked() {
  if (win == true) {
    if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
      //Closes the game
      exit();
    }
  }
}