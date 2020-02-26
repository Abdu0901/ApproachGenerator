//Integer that contains the current StratNumber generated by the RNG Button to select a strat
int StratNumber = 0;

//Contains the maximum strat number that each map has
int StratNumberLength;

//Define name of a button
Button GenerateRNGButton;

//String that gets replaced by the generated approach and shown in the text box
String ApproachText = "";

//Text Box Position and Size
int xB = 50;
int yB = 590;
int lB = 400;
int hB = 100;

//Boolean to check if strats should be drawed
Boolean DrawStrats = false;

void GenerateApproach() 
{
  int randomNr = -1;
  int tableNr = -1;
  //Calculating if mouse has just been pressed
  boolean mouseJustPressed1 = mousePressed & !lastMousePressed1;
  lastMousePressed1 = mousePressed;
  //Button that generates random approaches for the selected map
  GenerateRNGButton = new Button(50, 530, 400, 50, strokeColor, textColor, "GENERATE APPROACH", 35, 0, bRed, bGreen, bBlue);
  if (GenerateRNGButton.isButtonPressed(mouseX, mouseY, mouseJustPressed1, GenerateRNGButton) == true) 
  {
    if (MapPic==MapPics.get(0)) {
      randomNr = (int)random(0, MirageStratPics.size());  //vælger en strat ud fra et random nummer mellem 1 og mængden af strats til givende map
      DrawStrat = MirageStratPics.get(randomNr);
      tableNr = 0;
    } else if (MapPic==MapPics.get(1)) {
      randomNr = (int)random(0, Dust2StratPics.size());  //vælger en strat ud fra et random nummer mellem 1 og mængden af strats til givende map
      DrawStrat = Dust2StratPics.get(randomNr);
      tableNr = 1;
    } else if (MapPic==MapPics.get(2)) {
      randomNr = (int)random(0, InfernoStratPics.size());  //vælger en strat ud fra et random nummer mellem 1 og mængden af strats til givende map
      DrawStrat = InfernoStratPics.get(randomNr);
      tableNr = 2;
    }

    if (tableNr != -1 || randomNr != -1) getData(randomNr+1, tableNr);

    println("RNG Button Clicked");
    DrawStrats = true;
    //Darkens the background for visual feedback
    GenerateRNGButton.bRed = 100;
    GenerateRNGButton.bGreen = 100;
    GenerateRNGButton.bBlue = 100;
  }
  GenerateRNGButton.Update();

  //Approach box 
  fill(bRed, bGreen, bBlue);
  rect(xB, yB, lB, hB);

  //Approach Text
  fill(textColor);
  textAlign(LEFT, TOP);
  textSize(15);
  text("Strat Name: " + apprName, xB+3, yB, lB, hB);
  text("Strat Description: " + apprDesc, xB+3, yB+25, lB, hB);

  //Checks if DrawStrats is true and calls the StratDrawer function
  if (DrawStrats == true) {
    StratDrawer();
  }
}

void StratDrawer() {
  //Draws the generated Strat
  DrawStrat.resize(lP, hP);
  image (DrawStrat, xP, yP);
}

void getData(int Appr_ID, int tableNr)
{
  //Connect and get data from the database mydatabase.sqlite - must be placed in same directory
  db = new SQLite( this, databaseName );  // open database file
  if ( db.connect() )
  {
    db.query( "SELECT Navn, Desc FROM " + tableNames[tableNr] + " where Appr_ID = " + Appr_ID + ";" );
    while (db.next())
    {
      apprName = db.getString("Navn");
      apprDesc = db.getString("Desc");
    }
  } else {
    //Display error trying to get data from DB
    //textfield1.setText("Error DB");
  }
  db.close();
}
