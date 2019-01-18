/*
  Arcade Game als Platformer Jump and Run Stil( Mario oder sowas) mit Interaktionen und Power Ups
*/

ArrayList<Player> players; //Liste der Spieler (Multiplayer)

/*Hintergrundklasse und Postition des Hintergrundes*/
int screenPosition;
Background bg;
/*Hintergrundklasse und Postition des Hintergrundes*/


void setup(){
   size(1050,580);
   players = new ArrayList<Player>();
   /*Hintergrundklasse und Postition des Hintergrundes*/
   screenPosition = 0;
   bg = new Background();
   bg.loadBackground();
   /*Hintergrundklasse und Postition des Hintergrundes*/
}

void keyPressed(){
  if(key == 'a'){
    screenPosition--;
  }else if(key == 'd'){
    screenPosition++;
  }
}

void draw(){
  
  bg.showBackground();//Hintegrund Zeigen
  
  
    
}
