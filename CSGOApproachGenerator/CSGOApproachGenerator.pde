//Abdullah, Julius and Sebastian 3D2. CS:GO Approach Generator

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

ArrayList <PImage> MapPics = new ArrayList <PImage>();
ArrayList <PImage> MirageStratPics = new ArrayList <PImage>();
ArrayList <PImage> Dust2StratPics = new ArrayList <PImage>();
ArrayList <PImage> InfernoStratPics = new ArrayList <PImage>();

//directory
// example 'maps/"de_dust2_map.png"'
// example 'maps/strats/de_dust2_strats/de_dust2_map_strat1.png"'
String UserDirectory;

boolean start = false;


//Stroke color of the buttons
int strokeColor = 0;

//Brightness of text used in buttons
int textColor = 0;

//Color of the screen background
int BackGroundColor = 255;

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
  selectFolder("Select program folder:","folderSelected");
}

void folderSelected(File UserSelection) {
  if(UserSelection == null) {
   println("the window was closed or user hit cancel");
   
  } else {
    println("User selected " + UserSelection.getAbsolutePath());
    UserDirectory = UserSelection.getAbsolutePath();
    start = true;
    loadPictures();
  }
}

void loadPictures() {
  //Maps picture amount
  File MapDirectory = new File(UserDirectory + File.separator + "maps");
  String[] MapsFiles = MapDirectory.list();
println("MapDirectory.list()= " + MapDirectory.list());
println("MapsFiles = "+ MapsFiles);
  int MapsAmount = 0;
  for (int i = 0; i<MapsFiles.length; i++) {
    if (MapsFiles[i].endsWith(".png")) {
      println("imagefound " + MapsFiles[i].endsWith(".png"));
      MapsAmount++;
    }
  }
  println("MapsAmount" + MapsAmount);

  //Mirage strat picture amount
  File MirageDirectory = new File(UserDirectory + File.separator + "maps" + File.separator + "strats" + File.separator + "de_mirage_strats");
  String[] MirageFiles = MirageDirectory.list();
  int MirageStratAmount = 0;
  for (int i = 0; i<MirageFiles.length; i++) {
    if (MirageFiles[i].endsWith(".png")) {
      println("image found mi " + MirageFiles[i].endsWith(".png"));
      MirageStratAmount++;
    }
  }

  //Dust2 strat picture amount
  File Dust2Directory = new File(UserDirectory + File.separator + "maps" + File.separator + "strats" + File.separator + "de_dust2_strats");
  String[] Dust2Files = Dust2Directory.list();
  int Dust2StratAmount = 0;
  for (int i = 0; i<Dust2Files.length; i++) {
    if (Dust2Files[i].endsWith(".png")) {
      Dust2StratAmount++;
    }
  }

  //Inferno strat picture amount
  File InfernoDirectory = new File(UserDirectory + File.separator + "maps" + File.separator + "strats" + File.separator + "de_inferno_strats");
  String[] InfernoFiles = InfernoDirectory.list();
  int InfernoStratAmount = 0;
  for (int i = 0; i<InfernoFiles.length; i++) {
    if (InfernoFiles[i].endsWith(".png")) {
      InfernoStratAmount++;
    }
  }

  //for loop that goes through all maps and loads their coresponding images in arraylist 
  for (int i = 1; i < MapsAmount+1; i++) {
    MapPics.add(loadImage("maps" + File.separator +"map"+i+".png"));
  }

  //for loop that goes through all mirage strats and loads their corresponding images in arraylist
  for (int i = 1; i < MirageStratAmount+1; i++) {
    MirageStratPics.add(loadImage("maps"+File.separator+"strats"+File.separator+ "de_mirage_strats" + File.separator + "de_mirage_map_strat"+i+".png"));
  }

  //for loop that goes through all dust 2 strats and loads their corresponding images in arraylist
  for (int i = 1; i < Dust2StratAmount+1; i++) {
    Dust2StratPics.add(loadImage("maps"+File.separator+"strats"+File.separator+"de_dust2_strats"+File.separator+"de_dust2_map_strat"+i+".png"));
  }

  //for loop that goes through all inferno strats and loads their corresponding images in arraylist
  for (int i = 1; i < InfernoStratAmount+1; i++) {
    InfernoStratPics.add(loadImage("maps"+File.separator+"strats"+File.separator+"de_inferno_strats"+File.separator+"de_inferno_map_strat"+i+".png"));
  }

  //Black X for darkmode tick
  BlackX = loadImage("BlackX.png");
}

void draw() {
  if (start) {
    Start();
  }
}

void Start() {
  //BackGround color of the screen
  background(BackGroundColor);
  
  //finds and loads pictures
  
  
  //Calls the Map Selection Function which includes the buttons and text for that part
  MapSelection();
  GenerateApproach();
  BrightnessMode();
}
