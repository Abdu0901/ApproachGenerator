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

//Map Pictures
PImage EmptyMapPic;
PImage Dust2MapPic;
PImage MirageMapPic;
PImage InfernoMapPic;
PImage EmptyStrat;
PImage DrawStrat;

//Mirage Strats Pics
PImage MirageStrat;
PImage MirageStrat1;
PImage MirageStrat2;
PImage MirageStrat3;
PImage MirageStrat4;
PImage MirageStrat5;
//Dust 2 Strats Pics
PImage Dust2Strat;
PImage Dust2Strat1;
PImage Dust2Strat2;
PImage Dust2Strat3;
PImage Dust2Strat4;
PImage Dust2Strat5;
//Inferno Strats Pics
PImage InfernoStrat;
PImage InfernoStrat1;
PImage InfernoStrat2;
PImage InfernoStrat3;
PImage InfernoStrat4;
PImage InfernoStrat5;

void setup() {
  size(500, 700);
  //Map Pics
  EmptyMapPic = loadImage("maps/EmptyMapPic.png");
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
}

void draw() {
  //BackGround color of the screen
  background(255);
  //Calls the Map Selection Function which includes the buttons and text for that part
  MapSelection();
  GenerateApproach();
}
