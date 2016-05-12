
//This sub handles all the key presses that occur
void keyPressed() {
  //Handles when the d or right arrow key is pressed
  if (key == 'd' || keyCode == RIGHT) {    
    String checkerX = Integer.toString(playerx + 100);
    String checkerY = Integer.toString(playery);
    String wholeCheck = checkerX + "/" + checkerY;
    if (blacklistx.hasValue(wholeCheck)) {
      //If player is unsuccessful in moving
      chatLog.append("Player tried to move Right");
      chatLog.append("Ow! You hit the wall");
    } else {
      //If player is successful in moving
      chatLog.append("Player Moves Right");
      playerx = playerx + 100;
      String objectcheckerX = Integer.toString(playerx);
      String objectcheckerY = Integer.toString(playery);
      String wholeObjectCheck = objectcheckerX + "/" + objectcheckerY;
      if (objectX == playerx && objectY == playery && objectList.hasValue(wholeObjectCheck)) {
        String objectWallCheckX = Integer.toString(objectX + 100);
        String objectWallCheckY = Integer.toString(objectY);
        String objectWallCheck = objectWallCheckX + "/" + objectWallCheckY;
        if (!blacklistx.hasValue(objectWallCheck)) {
          chatLog.append("Object Moves Right");
          objectX = objectX + 100;
        } else {
          chatLog.append("Object is against Wall");
          playerx = playerx - 100;
        }
      }
    }
  }
  //Handles when the a or left arrow key is pressed
  if (key == 'a' || keyCode == LEFT) {
    String checkerX = Integer.toString(playerx - 100);
    String checkerY = Integer.toString(playery);
    String wholeCheck = checkerX + "/" + checkerY;
    if (blacklistx.hasValue(wholeCheck)) {
      //If player is unsuccessful in moving
      chatLog.append("Player tried to move Left");
      chatLog.append("Ow! You hit the wall");
    } else {
      //If player is successful in moving
      chatLog.append("Player Moves Left");
      playerx = playerx - 100;
      String objectcheckerX = Integer.toString(playerx);
      String objectcheckerY = Integer.toString(playery);
      String wholeObjectCheck = objectcheckerX + "/" + objectcheckerY;
      if (objectX == playerx && objectY == playery && objectList.hasValue(wholeObjectCheck)) {
        String objectWallCheckX = Integer.toString(objectX - 100);
        String objectWallCheckY = Integer.toString(objectY);
        String objectWallCheck = objectWallCheckX + "/" + objectWallCheckY;
        if (!blacklistx.hasValue(objectWallCheck)) {
          chatLog.append("Object Moves Left");
          objectX = objectX - 100;
        } else {
          chatLog.append("Object is against Wall");
          playerx = playerx + 100;
        }
      }
    }
  }
  //Handles when the s or down arrow key is pressed
  if (key == 's' || keyCode == DOWN) {
    String checkerX = Integer.toString(playerx);
    String checkerY = Integer.toString(playery + 100);
    String wholeCheck = checkerX + "/" + checkerY;
    if (blacklistx.hasValue(wholeCheck)) {
      //If player is unsuccessful in moving
      chatLog.append("Player tried to move Down");
      chatLog.append("Ow! You hit the wall");
    } else {
      //If player is successful in moving
      chatLog.append("Player Moves Down");
      playery = playery + 100;
      String objectcheckerX = Integer.toString(playerx);
      String objectcheckerY = Integer.toString(playery);
      String wholeObjectCheck = objectcheckerX + "/" + objectcheckerY;    
      if (objectX == playerx && objectY == playery && objectList.hasValue(wholeObjectCheck)) {
        String objectWallCheckX = Integer.toString(objectX);
        String objectWallCheckY = Integer.toString(objectY + 100);
        String objectWallCheck = objectWallCheckX + "/" + objectWallCheckY;
        if (!blacklistx.hasValue(objectWallCheck)) {
          chatLog.append("Object Moves Down");
          objectY = objectY + 100;
        } else {
          chatLog.append("Object is against Wall");
          playery = playery - 100;
        }
      }
    }
  }
  //Handles when the w or up arrow key is pressed
  if (key == 'w' || keyCode == UP) {
    String checkerX = Integer.toString(playerx);
    String checkerY = Integer.toString(playery - 100);
    String wholeCheck = checkerX + "/" + checkerY;
    if (blacklistx.hasValue(wholeCheck)) {
      //If player is unsuccessful in moving
      chatLog.append("Player tried to move Up");
      chatLog.append("Ow! You hit the wall");
    } else {
      //If player is successful in moving
      chatLog.append("Player Moves Up");
      playery = playery - 100;
      String objectcheckerX = Integer.toString(playerx);
      String objectcheckerY = Integer.toString(playery);
      String wholeObjectCheck = objectcheckerX + "/" + objectcheckerY;
      if (objectX == playerx && objectY == playery && objectList.hasValue(wholeObjectCheck)) {
        String objectWallCheckX = Integer.toString(objectX);
        String objectWallCheckY = Integer.toString(objectY - 100);
        String objectWallCheck = objectWallCheckX + "/" + objectWallCheckY;
        if (!blacklistx.hasValue(objectWallCheck)) {
          chatLog.append("Object Moves Up");
          objectY = objectY - 100;
        } else {
          chatLog.append("Object is against Wall");
          playery = playery + 100;
        }
      }
    }
  }
  //Handles when the o key is pressed
  if (key == 'o') {
    println(blacklistx);
    println(objectList);
    println(objectX);
    println(objectY);
  }
}