//Abdullah, Julius and Sebastian 3D2. CS:GO Approach Generator

//directory for pictures and strats:
// example 'maps/"de_dust2_map.png"'
// example 'maps/strats/de_dust2_strats/de_dust2_map_strat1.png"'

//Stroke color of the buttons
int strokeColor = 0;

//Brightness of text used in buttons
int textColor = 0;

//Color of the screen background
int backGroundColor = 255;

//Color of buttons
int bRed = 150, bGreen = 150, bBlue = 150;

//Defining variables needed for button check
boolean lastMousePressed = false;
boolean lastMousePressed1 = false;
boolean lastMousePressed2 = false;

//Black X Picture
PImage BlackX;

//Map Pictures
PImage MapPic;
PImage Dust2MapPic;
PImage MirageMapPic;
PImage InfernoMapPic;

PImage EmptyStrat;
PImage DrawStrat;

//Mirage Strats Pics
PImage MirageStrat, MirageStrat1, MirageStrat2, MirageStrat3, MirageStrat4, MirageStrat5;

//Dust 2 Strats Pics
PImage Dust2Strat, Dust2Strat1, Dust2Strat2, Dust2Strat3, Dust2Strat4, Dust2Strat5;

//Inferno Strats Pics
PImage InfernoStrat, InfernoStrat1, InfernoStrat2, InfernoStrat3, InfernoStrat4, InfernoStrat5, InfernoStrat6, InfernoStrat7, InfernoStrat8;

void setup() {
  size(500, 700);
  //Map Pics
  MapPic = loadImage("maps/EmptyMapPic.png");
  Dust2MapPic = loadImage("maps/de_dust2_map.png");
  MirageMapPic = loadImage("maps/de_mirage_map.png");
  InfernoMapPic = loadImage("maps/de_inferno_map.png");

  EmptyStrat = loadImage("maps/strats/EmptyStrat.png");
  DrawStrat = loadImage("maps/strats/EmptyStrat.png");

  //Dust2 Strats
  Dust2Strat1 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat1.png");
  Dust2Strat2 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat2.png");
  Dust2Strat3 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat3.png");
  Dust2Strat4 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat4.png");
  Dust2Strat5 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat5.png");
  Dust2Strat = loadImage("maps/strats/EmptyStrat.png");

  //Mirage Strats
  MirageStrat = loadImage("maps/strats/EmptyStrat.png");
  MirageStrat1 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat1.png");
  MirageStrat2 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat2.png");
  MirageStrat3 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat3.png");
  MirageStrat4 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat4.png");
  MirageStrat5 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat5.png");

  //Inferno strats
  InfernoStrat = loadImage("maps/strats/EmptyStrat.png");
  InfernoStrat1 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat1.png");
  InfernoStrat2 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat2.png");
  InfernoStrat3 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat3.png");
  InfernoStrat4 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat4.png");
  InfernoStrat5 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat5.png");
  InfernoStrat6 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat5.png");
  InfernoStrat7 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat5.png");
  InfernoStrat8 = loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat5.png");

  //Black X
  BlackX = loadImage("BlackX.png");
}

void draw() {
  //BackGround color of the screen
  background(backGroundColor);

  //Calls the Map Selection Function which includes the buttons and text for that part
  MapSelection();
  GenerateApproach();
  BrightnessMode();
}
