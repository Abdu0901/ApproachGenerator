//Define name of a button
Button MirageButton;
Button Dust2MapButton;
Button InfernoMapButton;
Button EmptyMapButton;

int xM = 15;
int yM = 80;
int lM = 90;
int hM = 30;

void MapSelection() {
  //Select a map text
  textAlign(LEFT, CENTER);
  fill(0);
  textSize(20);
  text("Select a Map:", 10, 60);

  //Mirage Map Button
  MirageButton = new Button(xM, yM, lM, hM, strokeColor, textColor, "Mirage", 20, 0, bRed, bGreen, bBlue);
  MirageButton.ButtonUpdate();
  if (MirageButton.isButtonPressed(mouseX, mouseY, mousePressed, MirageButton) == true) {
    println("Mirage Map has been selected");
  }

  //Dust 2 Map Button
  Dust2MapButton = new Button(xM+lM+35, yM, lM, hM, strokeColor, textColor, "Dust 2", 20, 0, bRed, bGreen, bBlue);
  Dust2MapButton.ButtonUpdate();
  if (Dust2MapButton.isButtonPressed(mouseX, mouseY, mousePressed, Dust2MapButton) == true) {
    println("Dust2 Map has been selected");
  }

  //Inferno Map Button
  InfernoMapButton = new Button(xM+35+lM+lM+35, yM, lM, hM, strokeColor, textColor, "Inferno", 20, 0, bRed, bGreen, bBlue);
  InfernoMapButton.ButtonUpdate();
  if (InfernoMapButton.isButtonPressed(mouseX, mouseY, mousePressed, InfernoMapButton) == true) {
    println("Inferno Map has been selected");
  }

  //Empty Map Button
  EmptyMapButton = new Button(xM+35+lM+lM+35+lM+35, yM, lM, hM, strokeColor, textColor, "", 20, 0, bRed, bGreen, bBlue);
  EmptyMapButton.ButtonUpdate();
  if (EmptyMapButton.isButtonPressed(mouseX, mouseY, mousePressed, EmptyMapButton) == true) {
    println("Empty Map has been selected");
  }
}
