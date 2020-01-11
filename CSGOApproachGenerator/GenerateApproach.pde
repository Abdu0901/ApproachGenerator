//Definin variables needed or button check
boolean lastMousePressed = false;
boolean lastMousePressed1 = false;
boolean lastMousePressed2 = false;

int StratNumber = 0;

//Define name of a button
Button GenerateRNGButton;
Button BrightnessMode;

//Boolean that checks if darkMode is on
boolean IsDarkModeOn = false;

//String that gets replaced by the generated approach and shown in the text box
String ApproachText = "";

//String that gets replaced by the selected brigtness mode and shown in the text box
String BrightNessModeText = "";

//Text Box Position and Size
int xB = 50;
int yB = 590;
int lB = 400;
int hB = 100;

void GenerateApproach() {
  //calculting if mouse has just been pressed
  boolean mouseJustPressed1 = mousePressed & !lastMousePressed1;
  lastMousePressed1 = mousePressed;
  //Button that generates random approaches for the selected map
  GenerateRNGButton = new Button(50, 530, 400, 50, strokeColor, textColor, "GENERATE APPROACH", 35, 0, bRed, bGreen, bBlue);
  //GenerateRNGButton.Update();
  if (GenerateRNGButton.isButtonPressed(mouseX, mouseY, mouseJustPressed1, GenerateRNGButton) == true) {
    StratNumber = (int) random(1, 6);
    println(StratNumber);
    println("RNG Button Clicked");
    StratDrawer();
    GenerateRNGButton.bRed = 100;
    GenerateRNGButton.bGreen = 100;
    GenerateRNGButton.bBlue = 100;
    GenerateRNGButton.textColor = 0;
  }
  GenerateRNGButton.Update();
  //Approach box 
  fill (bRed, bGreen, bBlue);
  rect(xB, yB, lB, hB);

  //Approach Text
  fill(textColor);
  textAlign(LEFT, TOP);
  textSize(15);
  text("Strat Name: " + ApproachText, xB, yB, lB, hB);

  //Checks which StratNumber is generated and applies the correct strat for each map
  if (StratNumber == 0) {
    Dust2Strat = EmptyStrat;
    MirageStrat = EmptyStrat;
    InfernoStrat = EmptyStrat;
  } else if (StratNumber == 1) {
    Dust2Strat = Dust2Strat1;
    MirageStrat = MirageStrat1;
    InfernoStrat = InfernoStrat1;
  } else if (StratNumber == 2) {
    Dust2Strat = Dust2Strat2;
    MirageStrat = MirageStrat2;
    InfernoStrat = InfernoStrat2;
  } else if (StratNumber == 3) {
    Dust2Strat = Dust2Strat3;
    MirageStrat = MirageStrat3;
    InfernoStrat = InfernoStrat3;
  } else if (StratNumber == 4) {
    Dust2Strat = Dust2Strat4;
    MirageStrat = MirageStrat4;
    InfernoStrat = InfernoStrat4;
  } else if (StratNumber == 5) {
    Dust2Strat = Dust2Strat5;
    MirageStrat = MirageStrat5;
    InfernoStrat = InfernoStrat5;
  }
  StratDrawer();
}

void StratDrawer() {
  //Draws the generated Strat
  DrawStrat.resize(lP, hP);
  image (DrawStrat, xP, yP);
}
