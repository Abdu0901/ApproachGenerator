//Abdullah, Julius and Sebastian 3D2. CS:GO Approach Generator

//directory for pictures and strats:
// example 'maps/"de_dust2_map.png"'
// example 'maps/strats/de_dust2_strats/de_dust2_map_strat1.png"'

//Stroke color of the buttons
int strokeColor = 0;

//Brightness of text used in buttons
int textColor = 0;

//Color of buttons
int bRed = 211, bGreen = 211, bBlue = 211;

PImage EmptyMapPic;
PImage Dust2MapPic;
PImage MirageMapPic;
PImage InfernoMapPic;

void setup() {
  size(500, 700);
  EmptyMapPic = loadImage("maps/EmptyMapPic.png");
  Dust2MapPic = loadImage("maps/de_dust2_map.png");
  MirageMapPic = loadImage("maps/de_mirage_map.png");
  InfernoMapPic = loadImage("maps/de_inferno_map.png");
}

void draw() {
  //BackGround color of the screen
  background(255);
  //Calls the Map Selection Function which includes the buttons and text for that part
  MapSelection();
}
