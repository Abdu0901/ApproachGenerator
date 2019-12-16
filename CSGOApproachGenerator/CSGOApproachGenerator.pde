//Abdullah, Julius and Sebastian 3D2. CS:GO Approach Generator

//directory for pictures and strats:
// example 'maps/"de_dust2_map.png"'
// example 'maps/strats/de_dust2_strats/de_dust2_map_strat1.png"'

void setup() {
  size(350, 700);
}

void draw() {
  background(255);
  //Title Box
  fill (0, 0, 255);
  rect(0, 0, width, height/25);
  //Title
  fill(255);
  textSize(23); 
  textAlign(CENTER, TOP);
  text("CS:GO APPROACH GENERATOR", width/2, 0);
}
