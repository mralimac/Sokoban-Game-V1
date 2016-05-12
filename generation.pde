//This is the sub for generating the map using the code on the first line of this program
void generation() {
  //Loops for length of code
  while (i < codelength) {
    int generationint = Integer.parseInt(split[i]);
    //Generates a wall
    if (generationint == 1) {
      fill(255, 0, 0);
      rect(genx, geny, 100, 100);
      String listEntryx = Integer.toString(genx);
      String listEntryy = Integer.toString(geny);   
      String listEntry = listEntryx + "/" + listEntryy;
      if (!blacklistx.hasValue(listEntry)) {      
        blacklistx.append(listEntry);
      }
    }
    //Generates Blank Space
    if (generationint == 2) {
      fill(0, 0, 255);
      rect(genx, geny, 100, 100);
    }
    //Generates the win tile
    if (generationint == 4) {
      fill(255, 0, 255);
      rect(genx, geny, 100, 100);
      String listEntryx = Integer.toString(genx);
      String listEntryy = Integer.toString(geny);   
      String listEntry = listEntryx + "/" + listEntryy;
      if (!winList.hasValue(listEntry)) {      
        winList.append(listEntry);
      }
    }
    //Generates an object
    if (generationint == 3) {
      fill(0, 0, 255);
      rect(genx, geny, 100, 100);
      if (ding == false) {
        objectX = genx;
        objectY = geny;
        ding = true;
      }
      String listObjectEntryx = Integer.toString(objectX);
      String listObjectEntryy = Integer.toString(objectY);   
      String listEntry = listObjectEntryx + "/" + listObjectEntryy;
      if (!objectList.hasValue(listEntry)) {      
        objectList.append(listEntry);
      }
    } 
    //This creates a new line for the map renderer
    if (generationint == 0) {
      geny = geny + 100;
      genx = 0;
    }
    genx = genx + 100;
    i++;
  }
  //Allows the object to move around
  fill(0, 255, 0);
  rect(objectX, objectY, 100, 100);
  //Makes the loop constant
  if (i == codelength) {
    i = 0;
    genx = 100;
    geny = 100;
  }
}