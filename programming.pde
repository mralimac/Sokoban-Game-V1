//This is v1 of my code for a sokoban-type game. Its very messy and poorly written
//Copyright 2016 Ali Mac


//This code generates a level
//1 = Wall Block
//2 = Empty Space (Play Area)
//3 = Object's Starting Position
//4 = Win Condition Block
//The player always starts at 100,100 (for now at least)
String code = "1/1/1/1/1/1/0/1/2/2/2/2/1/0/1/2/3/2/2/1/0/1/2/2/4/2/1/0/1/2/2/1/2/1/0/1/1/1/1/1/1/";
StringList blacklistx;
StringList objectList;
StringList winList;
StringList chatLog;
boolean ding = false;
int objectX = -100;
int objectY = -100;
int codelength = code.length();
int genx = 100;
int geny = 100;
int playerx = 200;
int playery = 200;
String[] split = code.split("/");
int i = 0;
boolean win = false;
//The variables will be cleaned up but its easier for testing to have them all as global


void setup() {
  //This section declares the size of the screen (default 800 by 800) plus it adds new lists
  size(800, 800);
  codelength = codelength/2;
  blacklistx = new StringList();
  objectList = new StringList();
  winList = new StringList();
  chatLog = new StringList();
}




void draw() {
  //The main section of the program. Most things are processed/handled here
  //There is a small script here that determines if the win condition is met or not
  //If yes to win, then it cancels processing the majority of the program and instead runs the win screen
  String objectWinCheckX = Integer.toString(objectX);
  String objectWinCheckY = Integer.toString(objectY);
  String wholeObjectWinCheck = objectWinCheckX + "/" + objectWinCheckY;
  if (!winList.hasValue(wholeObjectWinCheck)) {
    background(0);
    noStroke();
    //This calls the map generation sub
    generation();
    //This calls the player rendering sub
    player();
    //This calls the information sub
    info();
    //This calls the debug-chat sub
    chat();
  } else {
    //This calls the victory sub
    win();
  }
}