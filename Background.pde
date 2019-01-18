import java.io.File;

class Background {

  PGraphics background;

  public Background() { 
    background = createGraphics(width, height);
  }

  public void showBackground() {

    if (screenPosition < 0) {
      screenPosition += width;
    } else if (screenPosition > width) {
      screenPosition -= width;
    }

    float xOff = screenPosition;

    image(background, -xOff+width, 0);
    image(background, -xOff-width, 0);
    image(background, -xOff, 0);
  }

  public void loadBackground() {

    if (loadImage("data/background.png") != null) {//Lade den Hintergrund bei existieren

      background.beginDraw();
      background.image(loadImage("data/background.png"), 0, 0);
      background.endDraw();
    } else {//Erstelle den Hintergrund

      background.beginDraw();

      /*Sky*/
      background.background(68, 197, 252);
      /*Sky*/

      /*Hills*/
      int yHeight = 20;
      background.noStroke();
      background.fill(10, 200, 30);
      background.beginShape();
      background.vertex(0, height);
      background.vertex(0, height-220);
      for (int x = 0; x <= width-21; x+=21) {

        background.vertex(x, height-200-yHeight);

        yHeight = (int)random(yHeight-20, yHeight+20);
      }
      background.vertex(width, height-220);
      background.vertex(width, height);
      background.endShape(CLOSE);
      /*Hills*/

      /*Ground*/
      background.strokeWeight(1);
      background.stroke(10);
      background.fill(200, 110, 20);

      for (int y = 0; y < 4; y+=1) {

        background.beginShape(TRIANGLE_STRIP);
        for (float x = 0; x <= width; x+=21) {
          background.vertex(x, height-(20*y));
          background.vertex(x, height-(20*y +20));
        }
        background.endShape();
      }

      /*Ground*/


      //Speichere den Hintergrund
      background.endDraw();
      background.save("data/background.png");
    }
  }
}
