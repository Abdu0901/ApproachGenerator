//Define name of a Checkbox
Checkbox BrightnessCheck;

void BrightnessMode() {
  boolean mouseJustPressed2 = mousePressed & !lastMousePressed2;
  lastMousePressed2 = mousePressed;
  //Button that changes Brightness Mode when clicked
  BrightnessMode = new Button(390, 50, 90, 20, strokeColor, textColor, BrightNessModeText, 10, 2, bRed, bGreen, bBlue);
  BrightnessMode.Update();
  if (BrightnessMode.isButtonPressed(mouseX, mouseY, mouseJustPressed2, BrightnessMode) == true) {
    if (IsDarkModeOn == false) {
      IsDarkModeOn = true;
    } else if (IsDarkModeOn == true) {
      IsDarkModeOn = false;
    }
  }

  //Checks which Brightness mode is selected and runs the correct function
  if (IsDarkModeOn == false) {
    LightMode();
  } else if (IsDarkModeOn == true) {
    DarkMode();
  }
  BrightnessCheck = new Button(390, 50, 30, 20, strokeColor, textColor, "", 35, 0, 0, 0, 0);
}

void DarkMode() {
  strokeColor = 255;
  textColor = 255;
  backGroundColor = 0;
  BrightNessModeText = "Dark Mode";
}

void LightMode() {
  strokeColor = 0;
  textColor = 0;
  backGroundColor = 255;
  BrightNessModeText = "Light Mode";
}
