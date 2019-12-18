//Definin variables needed or button check
boolean lastMousePressed = false;

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
  lastMousePressed = mousePressed;
  //Button that generates random approaches for the selected map
  GenerateRNGButton = new Button(50, 530, 400, 50, strokeColor, textColor, "GENERATE APPROACH", 35, 0, bRed, bGreen, bBlue);
  GenerateRNGButton.ButtonUpdate();
  if (GenerateRNGButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, GenerateRNGButton) == true) {
    println("RNG Button Clicked");
    ApproachText = "Morbi a metus. Phasellus enim erat, vestibulum vel, aliquam a, posuere eu, velit. Nullam sapien sem, ornare ac, nonummy non, lobortis a, enim. Nunc tincidunt ante vitae massa. Duis ante orci, molestie vitae, vehicula venenatis, tincidunt ac, pede. Nulla accumsan, elit sit amet varius semper, nulla mauris mollis quam, tempor suscipit diam nulla vel leo. Etiam commodo dui eget wisi. Donec iaculis gravida nulla. Donec quis nibh at felis congue commodo. Etiam bibendum elit eget erat. Morbi a metus. Phasellus enim erat, vestibulum vel, aliquam a, posuere eu, velit. Nullam sapien sem, ornare ac, nonummy non, lobortis a, enim. Nunc";
  }
  //Approach box
  fill (200);
  rect(xB,yB,lB,hB);
  
  //Approach Text
  fill(0);
  textAlign(LEFT, TOP);
  textSize(15);
  text("Strat Name: " + ApproachText, xB, yB, lB, hB);
}
