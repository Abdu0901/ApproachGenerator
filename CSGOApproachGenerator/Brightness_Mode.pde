//Define name of a Checkbox
CheckBox BrightnessCheck;

void BrightnessMode() {
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

  BrightnessCheck = new CheckBox(460, 50, 20, 20, strokeColor, textColor, "", 15, 0, bRed, bGreen, bBlue);
  //Checks which Brightness mode is selected and runs the correct function
  if (IsDarkModeOn == false) {
    LightMode();
  } else if (IsDarkModeOn == true) {
    DarkMode();
  }
  BrightnessCheck.Update();
}

void DarkMode() {
  strokeColor = 255;
  textColor = 255;
  backGroundColor = 0;
  BrightnessCheck.bRed = 0;
  BrightnessCheck.bGreen = 255;
  BrightnessCheck.bBlue = 0;
}

void LightMode() {
  strokeColor = 0;
  textColor = 0;
  backGroundColor = 255;
  BrightnessCheck.bRed = 255;
  BrightnessCheck.bGreen = 0;
  BrightnessCheck.bBlue = 0;
}
