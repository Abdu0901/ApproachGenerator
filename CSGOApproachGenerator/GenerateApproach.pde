//Definin variables needed or button check
boolean lastMousePressed = false;
boolean lastMousePressed1 = false;

int StratNumber = 0;

//Define name of a button
Button GenerateRNGButton;

//String that gets replaced by the generated approach and shown in the text box
String ApproachText = "";

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
  GenerateRNGButton.ButtonUpdate();
  if (GenerateRNGButton.isButtonPressed(mouseX, mouseY, mouseJustPressed1, GenerateRNGButton) == true) {
    StratNumber = (int) random(1, 6);
    println(StratNumber);
    println("RNG Button Clicked");
    StratDrawer();
  }
  //Approach box
  fill (200);
  rect(xB, yB, lB, hB);

  //Approach Text
  fill(0);
  textAlign(LEFT, TOP);
  textSize(15);
  text("Strat Name: " + ApproachText, xB, yB, lB, hB);

  if (StratNumber == 1) {
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
  EmptyStrat.resize(lP, hP);
  image (EmptyStrat, xP, yP);
}
