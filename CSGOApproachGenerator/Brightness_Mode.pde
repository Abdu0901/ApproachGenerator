//Define name of a button
Button BrightnessMode;

//Define name of a Checkbox
CheckBox BrightnessCheck;

//Boolean that checks if darkMode is on
boolean IsDarkModeOn = false;

//Check Box Position and Size
int xC = 460;
int yC = 50;
int lC = 20;
int hC = 20;

void BrightnessMode() {
  //Calculating if mouse has just been pressed
  boolean mouseJustPressed2 = mousePressed & !lastMousePressed2;
  lastMousePressed2 = mousePressed;
  //Button that changes Brightness Mode when clicked
  BrightnessMode = new Button(390, 50, 90, 20, strokeColor, textColor, "Dark Mode", 10, 2, bRed, bGreen, bBlue);
  BrightnessMode.Update();
  if (BrightnessMode.isButtonPressed(mouseX, mouseY, mouseJustPressed2, BrightnessMode) == true) {
    if (IsDarkModeOn == false) {
      IsDarkModeOn = true;
    } else if (IsDarkModeOn == true) {
      IsDarkModeOn = false;
    }
  }
  BrightnessCheck = new CheckBox(xC, yC, lC, hC, strokeColor, textColor, "", 15, 0, 255, 255, 255);
  BrightnessCheck.Update();
  //Checks which Brightness mode is selected and runs the correct function
  if (IsDarkModeOn == false) {
    LightMode();
  } else if (IsDarkModeOn == true) {
    DarkMode();
  }
}

void DarkMode() {
  strokeColor = 255;
  textColor = 255;
  BackGroundColor = 0;
  BlackX.resize(lC, hC);
  image (BlackX, xC, yC);
}

void LightMode() {
  strokeColor = 0;
  textColor = 0;
  BackGroundColor = 255;
}
