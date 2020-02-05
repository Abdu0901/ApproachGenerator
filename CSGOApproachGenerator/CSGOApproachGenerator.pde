//Abdullah, Julius and Sebastian 3D2. CS:GO Approach Generator

import java.io.File;

ArrayList <PImage> MapPics = new ArrayList <PImage>();
ArrayList <PImage> MirageStratPics = new ArrayList <PImage>();
ArrayList <PImage> Dust2StratPics = new ArrayList <PImage>();
ArrayList <PImage> InfernoStratPics = new ArrayList <PImage>();

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
PImage MapPic;
PImage DrawStrat;

void setup() { 
  size(500, 700);
  //Maps Amount
  File MapDirectory = new File("/Users/abdullahmoussa/Documents/GitHub/ApproachGenerator/CSGOApproachGenerator/maps");
  String[] MapsFiles = MapDirectory.list();
  int MapsAmount = 0;
  for (int i = 0; i<MapsFiles.length; i++) {
    if (MapsFiles[i].endsWith(".png")) {
      MapsAmount++;
    }
  }

  //Mirage Amount
  File MirageDirectory = new File("/Users/abdullahmoussa/Documents/GitHub/ApproachGenerator/CSGOApproachGenerator/maps/strats/de_mirage_strats");
  String[] MirageFiles = MirageDirectory.list();
  int MirageStratAmount = 0;
  for (int i = 0; i<MirageFiles.length; i++) {
    if (MirageFiles[i].endsWith(".png")) {
      MirageStratAmount++;
    }
  }

  //Dust2 Amount
  File Dust2Directory = new File("/Users/abdullahmoussa/Documents/GitHub/ApproachGenerator/CSGOApproachGenerator/maps/strats/de_dust2_strats");
  String[] Dust2Files = Dust2Directory.list();
  int Dust2StratAmount = 0;
  for (int i = 0; i<Dust2Files.length; i++) {
    if (Dust2Files[i].endsWith(".png")) {
      Dust2StratAmount++;
    }
  }

  //Infenro Amount
  File InfernoDirectory = new File("/Users/abdullahmoussa/Documents/GitHub/ApproachGenerator/CSGOApproachGenerator/maps/strats/de_inferno_strats");
  String[] InfernoFiles = InfernoDirectory.list();
  int InfernoStratAmount = 0;
  for (int i = 0; i<InfernoFiles.length; i++) {
    if (InfernoFiles[i].endsWith(".png")) {
      InfernoStratAmount++;
    }
  }

  //for loop that goes through all maps and loads their coresponding images in arraylist 
  for (int i = 1; i < MapsAmount; i++) {
    MapPics.add(loadImage("maps"+i+".png"));
  }

  //An Arraylist + for loop that goes through all mirage strats and loads their coresponding images
  for (int i = 1; i < MirageStratAmount; i++) {
    MirageStratPics.add(loadImage("maps/strats/de_mirage_strats/de_mirage_map_strat"+i+".png"));
  }

  //An Arraylist + for loop that goes through all dust 2 strats and loads their coresponding images
  for (int i = 1; i < Dust2StratAmount; i++) {
    Dust2StratPics.add(loadImage("maps/strats/de_dust2_strats/de_dust2_map_strat"+i+".png"));
  }

  //An Arraylist + for loop that goes through all infrno strats and loads their coresponding images
  for (int i = 1; i < InfernoStratAmount; i++) {
    InfernoStratPics.add(loadImage("maps/strats/de_inferno_strats/de_inferno_map_strat"+i+".png"));
  }

  //Black X
  BlackX = loadImage("BlackX.png");
}

void draw() {
  //BackGround color of the screen
  background(backGroundColor);

  //Calls the Map Selection Function which includes the buttons and text for that part
  //MapSelection();
  //GenerateApproach();
  //BrightnessMode();
}
