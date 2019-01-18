class Button {

  int x, y, xsize, ysize; 
  ButtonType type;
  color c;
  String text;


  Button(int x, int y, int xsize, int ysize, ButtonType type, color c, String text) {

    this.x = x;
    this.y = y;
    this.xsize = xsize;
    this.ysize = ysize;
    this.type = type;
    this.c = c;
    this.text = text;
  }

  void show() {
    fill(c);
    if (type.equals(ButtonType.RECHTECK)) {

      rectMode(CENTER);

      rect(x, y, xsize, ysize);
      
    } else if (type.equals(ButtonType.KREIS)) {
      
      ellipse(x, y, xsize, ysize);
      
    }

    fill(0);

    textAlign(CENTER);
    textSize((xsize+ysize)/5);
    text(text, x, y + ysize/4);
  }

  boolean isIn(PVector vec) {
    if (type.equals(ButtonType.RECHTECK))
      if ((x-xsize/2 <= vec.x && vec.x <= x+xsize/2) && (y-ysize/2 <= vec.y && vec.y <= y+ysize/2)) {
        return true;
      }
    if (type.equals(ButtonType.KREIS))
      if (dist(x, y, vec.x, vec.y) < xsize/2) {
        return true;
      }

    return false;
  }
}

enum ButtonType {
  RECHTECK, KREIS;
}
