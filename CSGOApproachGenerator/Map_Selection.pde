//Define name of a button
Button MirageButton;
Button Dust2Button;
Button InfernoButton;
Button EmptyMapButton;

//Button Positions and Size
int xM = 15;
int yM = 80;
int lM = 90;
int hM = 30;

//Position and size of Map Pics
int xP = 50;
int yP = 125;
int lP = 400;
int hP = 400;

//Boolean that checks if buttons have been clicked
boolean IsMirageHighLighted = false;
boolean IsDust2HighLighted = false;
boolean IsInfernoHighLighted = false;

void MapSelection() {
  //calculting if mouse has just been pressed
  boolean mouseJustPressed = mousePressed & !lastMousePressed;
  lastMousePressed = mousePressed;
  //Title Box
  fill (0, 0, 255);
  rect(0, 0, width, 40);
  //Title of the program at the top of the screen
  fill(255);
  textSize(33); 
  textAlign(CENTER, TOP);
  text("CS:GO APPROACH GENERATOR", width/2, 0);
  //Select a map text
  textAlign(LEFT, CENTER);
  fill(textColor);
  textSize(20);
  text("Select a Map:", 15, 60);

  //Mirage Map Button
  MirageButton = new Button(xM, yM, lM, hM, strokeColor, textColor, "Mirage", 20, 0, bRed, bGreen, bBlue);
  if (MirageButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, MirageButton) == true) {
    println("Mirage Map has been selected");
    MirageMapSelection();
    IsMirageHighLighted = true;
    IsDust2HighLighted = false;
    IsInfernoHighLighted = false;
  }
  //Checks if Mirage is highlighted
  if (IsMirageHighLighted == true) {
    MirageHighlighted();
  }

  //Dust 2 Map Button
  Dust2Button = new Button(xM+lM+35, yM, lM, hM, strokeColor, textColor, "Dust 2", 20, 0, bRed, bGreen, bBlue);
  if (Dust2Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, Dust2Button) == true) {
    println("Dust2 Map has been selected");
    Dust2MapSelection();
    IsMirageHighLighted = false;
    IsDust2HighLighted = true;
    IsInfernoHighLighted = false;
  }
  //Checks if Dust2 is highlighted
  if (IsDust2HighLighted == true) {
    Dust2Highlighted();
  }

  //Inferno Map Button
  InfernoButton = new Button(xM+35+lM+lM+35, yM, lM, hM, strokeColor, textColor, "Inferno", 20, 0, bRed, bGreen, bBlue);
  if (InfernoButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, InfernoButton) == true) {
    println("Inferno Map has been selected");
    InfernoMapSelection();
    IsMirageHighLighted = false;
    IsDust2HighLighted = false;
    IsInfernoHighLighted = true;
  }
  //Checks if Inferno is highlighted
  if (IsInfernoHighLighted == true) {
    InfernoHighlighted();
  }

  //Empty Map Button
  EmptyMapButton = new Button(xM+35+lM+lM+35+lM+35, yM, lM, hM, strokeColor, textColor, "", 20, 0, bRed, bGreen, bBlue);
  EmptyMapButton.ButtonUpdate();
  if (EmptyMapButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmptyMapButton) == true) {
    println("Empty Map has been selected");
  }

  MirageButton.ButtonUpdate();
  Dust2Button.ButtonUpdate();
  InfernoButton.ButtonUpdate();
  MapDrawer();
}

void MapDrawer() {
  //Draws the selected Map
  EmptyMapPic.resize(lP, hP);
  image (EmptyMapPic, xP, yP);
}

void MirageMapSelection() {
  StratNumber = 0;
  EmptyMapPic = MirageMapPic;
  DrawStrat = MirageStrat;
}

void Dust2MapSelection() {
  StratNumber = 0;
  EmptyMapPic = Dust2MapPic;
  DrawStrat = Dust2Strat;
}

void InfernoMapSelection() {
  StratNumber = 0;
  EmptyMapPic = InfernoMapPic;
  DrawStrat = InfernoStrat;
}

void MirageHighlighted() {
  MirageButton.bRed = 0;
  MirageButton.bGreen = 255;
  MirageButton.bBlue = 0;
  MirageButton.textColor = 0;
  DrawStrat = MirageStrat;
}

void Dust2Highlighted() {
  Dust2Button.bRed = 0;
  Dust2Button.bGreen = 255;
  Dust2Button.bBlue = 0;
  Dust2Button.textColor = 0;
  DrawStrat = Dust2Strat;
}

void InfernoHighlighted() {
  InfernoButton.bRed = 0;
  InfernoButton.bGreen = 255;
  InfernoButton.bBlue = 0;
  InfernoButton.textColor = 0;
  DrawStrat = InfernoStrat;
}
