
//The purpose of this chat is to provide an in-game console for debugging reasons
void chat() {  
  fill(255);
  if (chatLog.size() > 0) {
    if (chatLog.size() > 8) {
      text(chatLog.get(chatLog.size()-8), 20, 720);
    }
    if (chatLog.size() > 7) {
      text(chatLog.get(chatLog.size()-7), 20, 730);
    }
    if (chatLog.size() > 6) {
      text(chatLog.get(chatLog.size()-6), 20, 740);
    }    
    if (chatLog.size() > 5) {
      text(chatLog.get(chatLog.size()-5), 20, 750);
    }
    if (chatLog.size() > 4) {
      text(chatLog.get(chatLog.size()-4), 20, 760);
    }
    if (chatLog.size() > 3) {
      text(chatLog.get(chatLog.size()-3), 20, 770);
    }
    if (chatLog.size() > 2) {
      text(chatLog.get(chatLog.size()-2), 20, 780);
    }
    if (chatLog.size() > 1) {
      text(chatLog.get(chatLog.size()-1), 20, 790);
    }
  }
  text("chatLog", 20, 800);
}