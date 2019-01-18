/*
  Arcade Game als Platformer Jump and Run Stil( Mario oder sowas) mit Interaktionen und Power Ups
 */

GameState gamestate;

ArrayList<Player> players; //Liste der Spieler (Multiplayer)
Player localPlayer;

/*Hintergrundklasse und Postition des Hintergrundes*/
float screenPosition;
Background bg;
/*Hintergrundklasse und Postition des Hintergrundes*/

ArrayList<Button> buttons = new ArrayList<Button>();
ArrayList<TextField> textFields = new ArrayList<TextField>();

void setup() {
  size(1050, 580);

  players = new ArrayList<Player>();
  localPlayer = new Player(new PVector(0, 0));
  gamestate = GameState.LOBBY;
  /*Hintergrundklasse und Postition des Hintergrundes*/
  screenPosition = 0;
  bg = new Background();
  bg.loadBackground();
  /*Hintergrundklasse und Postition des Hintergrundes*/
  textFields.add(new TextField(width/2, height/2, 100, 30, color(200, 200, 200), "Name"));
}

void draw() {
  clear();
  bg.showBackground();//Hintegrund Zeigen

  for (TextField textfield : textFields) {
      textfield.show();
  }

  if (gamestate == GameState.LOBBY) {
    screenPosition+=0.1;
  }
}

void keyPressed() {
  for (TextField textfield : textFields) {
    if (textfield.inUse) {
      if (keyCode == 8) {
        if (textfield.text.length() > 0)
          textfield.text = textfield.text.substring(0, textfield.text.length()-1);
      } else
        textfield.text += key;
    }
  }
}

void mousePressed() {
  for (TextField textfield : textFields) {
    if (textfield.isIn(new PVector(mouseX, mouseY))) {
      textfield.inUse = true;
    } else {
      textfield.inUse = false;
    }
  }
  for (Button button : buttons) {
    if (button.isIn(new PVector(mouseX, mouseY))) {
    }
  }
}
