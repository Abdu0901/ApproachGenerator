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

//Boolean that checks if the DrawMap function should be runned
boolean DrawMap = false;

//which map is selected
PImage MapPicSelected;

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
  if (MirageButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, MirageButton)) {
    println("Mirage Map has been selected");
    DeselectAllHighlights();
    MapPic = MapPics.get(0);
    IsMirageHighLighted = true;
    DrawMap = true;
    DrawStrats = false;
    tableName = tableNames[0];
  }
  //Checks if Mirage is highlighted
  if (IsMirageHighLighted) {
    MirageHighlighted();
  }

  //Dust 2 Map Button
  Dust2Button = new Button(xM+lM+35, yM, lM, hM, strokeColor, textColor, "Dust 2", 20, 0, bRed, bGreen, bBlue);
  if (Dust2Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, Dust2Button)) {
    println("Dust2 Map has been selected");
    DeselectAllHighlights();
    MapPic = MapPics.get(1);
    IsDust2HighLighted = true;
    DrawMap = true;
    DrawStrats = false;
    tableName = tableNames[1];
  }
  //Checks if Dust2 is highlighted
  if (IsDust2HighLighted) {
    Dust2Highlighted();
  }

  //Inferno Map Button
  InfernoButton = new Button(xM+35+lM+lM+35, yM, lM, hM, strokeColor, textColor, "Inferno", 20, 0, bRed, bGreen, bBlue);
  if (InfernoButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, InfernoButton)) {
    println("Inferno Map has been selected");
    DeselectAllHighlights();
    MapPic = MapPics.get(2);
    IsInfernoHighLighted = true;
    DrawMap = true;
    DrawStrats = false;
    tableName = tableNames[2];
  }
  //Checks if Inferno is highlighted
  if (IsInfernoHighLighted) {
    InfernoHighlighted();
  }

  //Empty Map Button
  EmptyMapButton = new Button(xM+35+lM+lM+35+lM+35, yM, lM, hM, strokeColor, textColor, "", 20, 0, bRed, bGreen, bBlue);
  EmptyMapButton.Update();
  if (EmptyMapButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmptyMapButton)) {
    println("Empty Map has been selected");
  }
  
  //Checks if DrawMap is true and calls the MapDrawer function
  if (DrawMap) {
    MapDrawer();
  }

  MirageButton.Update();
  MirageButton.textUpdate();
  Dust2Button.Update();
  Dust2Button.textUpdate();
  InfernoButton.Update();
  InfernoButton.textUpdate();
}

void MapDrawer() {
  //Draws the selected Map
  MapPic.resize(lP, hP);
  image(MapPic, xP, yP);
}

void MirageHighlighted() {
  //Gives visual feedback when Mirage button is pressed
  MirageButton.bRed = 0;
  MirageButton.bGreen = 255;
  MirageButton.bBlue = 0;
  //Darkens text colour if selected even in dark mode for better visuals
  MirageButton.textColor = 0;
}

void Dust2Highlighted() {
  //Gives visual feedback when Mirage button is pressed
  Dust2Button.bRed = 0;
  Dust2Button.bGreen = 255;
  Dust2Button.bBlue = 0;
  //Darkens text colour if selected even in dark mode for better visuals  
  Dust2Button.textColor = 0;
}

void InfernoHighlighted() {
  //Gives visual feedback when Mirage button is pressed
  InfernoButton.bRed = 0;
  InfernoButton.bGreen = 255;
  InfernoButton.bBlue = 0;
  //Darkens text colour if selected even in dark mode for better visuals
  InfernoButton.textColor = 0;
}

void DeselectAllHighlights() {
  //Deselects all maps by setting them to false which also helps resets the map to default color
  IsMirageHighLighted = false;
  IsDust2HighLighted = false;
  IsInfernoHighLighted = false;
}
