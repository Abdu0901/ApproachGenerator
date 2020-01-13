//Define name of a new button
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
  //Determines if mouse has just been pressed
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
    DeselectAllHighlights();
    MirageMapSelection();
    IsMirageHighLighted = true;
    StratNumberLength = 5;
  }
  //Checks if Mirage is highlighted
  if (IsMirageHighLighted == true) {
    MirageHighlighted();
  }

  //Dust 2 Map Button
  Dust2Button = new Button(xM+lM+35, yM, lM, hM, strokeColor, textColor, "Dust 2", 20, 0, bRed, bGreen, bBlue);
  if (Dust2Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, Dust2Button) == true) {
    println("Dust2 Map has been selected");
    DeselectAllHighlights();
    Dust2MapSelection();
    IsDust2HighLighted = true;
    StratNumberLength = 5;
  }
  //Checks if Dust2 is highlighted
  if (IsDust2HighLighted == true) {
    Dust2Highlighted();
  }

  //Inferno Map Button
  InfernoButton = new Button(xM+35+lM+lM+35, yM, lM, hM, strokeColor, textColor, "Inferno", 20, 0, bRed, bGreen, bBlue);
  if (InfernoButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, InfernoButton) == true) {
    println("Inferno Map has been selected");
    DeselectAllHighlights();
    InfernoMapSelection();
    IsInfernoHighLighted = true;
    StratNumberLength = 8;
  }
  //Checks if Inferno is highlighted
  if (IsInfernoHighLighted == true) {
    InfernoHighlighted();
  }

  //Empty Map Button
  EmptyMapButton = new Button(xM+35+lM+lM+35+lM+35, yM, lM, hM, strokeColor, textColor, "", 20, 0, bRed, bGreen, bBlue);
  EmptyMapButton.Update();
  if (EmptyMapButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmptyMapButton) == true) {
    println("Empty Map has been selected");
  }

  MirageButton.Update();
  Dust2Button.Update();
  InfernoButton.Update();
  MapDrawer();
}

void MapDrawer() {
  //Draws the selected Map
  MapPic.resize(lP, hP); //skal bare hedde MapPic
  image (MapPic, xP, yP);
}

void MirageMapSelection() {
  //Resets strat drawing for Mirage
  StratNumber = 0;
  MapPic = MirageMapPic;
  DrawStrat = MirageStrat;
}

void Dust2MapSelection() {
  //Resets strat drawing for Dust2
  StratNumber = 0;
  MapPic = Dust2MapPic;
  DrawStrat = Dust2Strat;
}

void InfernoMapSelection() {
  //Resets strat drawing for Mirage
  StratNumber = 0;
  MapPic = InfernoMapPic;
  DrawStrat = InfernoStrat;
}

void MirageHighlighted() {
  //Gives visual feedback when Mirage button is pressed
  MirageButton.bRed = 0;
  MirageButton.bGreen = 255;
  MirageButton.bBlue = 0;
  //Darkens text colour if selected even in dark mode for better visuals
  MirageButton.textColor = 0;
  DrawStrat = MirageStrat;
}

void Dust2Highlighted() {
  //Gives visual feedback when Mirage button is pressed
  Dust2Button.bRed = 0;
  Dust2Button.bGreen = 255;
  Dust2Button.bBlue = 0;
  //Darkens text colour if selected even in dark mode for better visuals  
  Dust2Button.textColor = 0;
  DrawStrat = Dust2Strat;
}

void InfernoHighlighted() {
  //Gives visual feedback when Mirage button is pressed
  InfernoButton.bRed = 0;
  InfernoButton.bGreen = 255;
  InfernoButton.bBlue = 0;
  //Darkens text colour if selected even in dark mode for better visuals
  InfernoButton.textColor = 0;
  DrawStrat = InfernoStrat;
}

void DeselectAllHighlights() {
  //Helps to recolour the map buttons' background
  IsMirageHighLighted = false;
  IsDust2HighLighted = false;
  IsInfernoHighLighted = false;
}
