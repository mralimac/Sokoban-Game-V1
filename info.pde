
//Just a small sub for making information appear relevant to the game

void info() {
  fill(255);
  text("Players Current Coords: "+playerx + "/" +playery, 50, 50);
  text("Objects Current Coords: "+objectX + "/" +objectY, 50, 65);
  text("Player is black", 650, 35);
  text("Object is green", 650, 50);
  text("Win condition is pink", 650, 65);
  text("PlayArea is blue", 650, 80);
  text("Wall is red", 650, 95);
}