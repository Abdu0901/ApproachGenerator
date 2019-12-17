//Define name of a button
Button MirageButton;
Button Dust2MapButton;
Button InfernoMapButton;
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

void MapSelection() {
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
  fill(0);
  textSize(20);
  text("Select a Map:", 10, 60);

  //Mirage Map Button
  MirageButton = new Button(xM, yM, lM, hM, strokeColor, textColor, "Mirage", 20, 0, bRed, bGreen, bBlue);
  MirageButton.ButtonUpdate();
  if (MirageButton.isButtonPressed(mouseX, mouseY, mousePressed, MirageButton) == true) {
    println("Mirage Map has been selected");
    EmptyMapPic = MirageMapPic;
  }

  //Dust 2 Map Button
  Dust2MapButton = new Button(xM+lM+35, yM, lM, hM, strokeColor, textColor, "Dust 2", 20, 0, bRed, bGreen, bBlue);
  Dust2MapButton.ButtonUpdate();
  if (Dust2MapButton.isButtonPressed(mouseX, mouseY, mousePressed, Dust2MapButton) == true) {
    println("Dust2 Map has been selected");
    EmptyMapPic = Dust2MapPic;
  }

  //Inferno Map Button
  InfernoMapButton = new Button(xM+35+lM+lM+35, yM, lM, hM, strokeColor, textColor, "Inferno", 20, 0, bRed, bGreen, bBlue);
  InfernoMapButton.ButtonUpdate();
  if (InfernoMapButton.isButtonPressed(mouseX, mouseY, mousePressed, InfernoMapButton) == true) {
    println("Inferno Map has been selected");
    EmptyMapPic = InfernoMapPic;
  }

  //Empty Map Button
  EmptyMapButton = new Button(xM+35+lM+lM+35+lM+35, yM, lM, hM, strokeColor, textColor, "", 20, 0, bRed, bGreen, bBlue);
  EmptyMapButton.ButtonUpdate();
  if (EmptyMapButton.isButtonPressed(mouseX, mouseY, mousePressed, EmptyMapButton) == true) {
    println("Empty Map has been selected");
  }
  MapDrawer();
}

void MapDrawer() {
  EmptyMapPic.resize(lP, hP);
  image (EmptyMapPic, xP, yP);
}
