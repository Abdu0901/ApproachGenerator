//Definin variables needed or button check
boolean lastMousePressed = false;
boolean lastMousePressed1 = false;

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
  boolean mouseJustPressed = mousePressed & !lastMousePressed;
  lastMousePressed1 = mousePressed;
  //Button that generates random approaches for the selected map
  GenerateRNGButton = new Button(50, 530, 400, 50, strokeColor, textColor, "GENERATE APPROACH", 35, 0, bRed, bGreen, bBlue);
  GenerateRNGButton.ButtonUpdate();
  if (GenerateRNGButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, GenerateRNGButton) == true) {
    println("RNG Button Clicked");
  }
  //Approach box
  fill (200);
  rect(xB, yB, lB, hB);

  //Approach Text
  fill(0);
  textAlign(LEFT, TOP);
  textSize(15);
  text("Strat Name: " + ApproachText, xB, yB, lB, hB);
  StratDrawer();
}

void StratDrawer() {
  //Draws the generated Strat
  EmptyStrat.resize(lP, hP);
  image (EmptyStrat, xP, yP);
}
