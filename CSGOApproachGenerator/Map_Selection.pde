//Define name of a button
Button MirageButton;
Button Dust2MapButton;
Button InfernoMapButton;

void MapSelection() {
  //Select a map text
  textAlign(LEFT, CENTER);
  fill(0);
  textSize(20);
  text("Select a Map:", width/50, height/15);

  //Mirage Map Button
  MirageButton = new Button(width/50, height/10, width/4, height/25, strokeColor, textColor, "Mirage", 20, 0, bRed, bGreen, bBlue);
  MirageButton.ButtonUpdate();
  if (MirageButton.isButtonPressed(mouseX, mouseY, mousePressed, MirageButton) == true) {
    println("Mirage Map has been selected");
  }

  //Dust 2 Map Button
  Dust2MapButton = new Button(width/3, height/10, width/4, height/25, strokeColor, textColor, "Dust 2", 20, 0, bRed, bGreen, bBlue);
  Dust2MapButton.ButtonUpdate();
  if (Dust2MapButton.isButtonPressed(mouseX, mouseY, mousePressed, Dust2MapButton) == true) {
    println("Dust2 Map has been selected");
  }

  //Inferno Map Button
  InfernoMapButton = new Button(width/3, height/10, width/4, height/25, strokeColor, textColor, "Inferno", 20, 0, bRed, bGreen, bBlue);
  InfernoMapButton.ButtonUpdate();
  if (InfernoMapButton.isButtonPressed(mouseX, mouseY, mousePressed, InfernoMapButton) == true) {
    println("Inferno Map has been selected");
  }
}
