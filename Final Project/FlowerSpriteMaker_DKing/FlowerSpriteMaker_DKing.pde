/*
Daniel King's DIG5508 Final Project
*/

void setup() {
  size(50, 50);
  smooth();
  frameRate(1);
}

void draw() {

// Initialize variables
color petalcolor = #ffffff;
int petalnumber;
int petallength = 26;
int petalwidth;
int petaldistance = -11;
int centerwidth = 16;
float petalrotation;
String spritename;
int spritenumber = 0;
stroke(153);

// Set center point
translate(width/2, height/2);

for (int n = 0; n < 6; n++) {
  
  // Increment sprite number and number of petals
  spritenumber = spritenumber + 1;
  petalnumber = spritenumber + 2;
  
  petalwidth = 23 - (petalnumber * 2);
  petalrotation = 360 / petalnumber;

  // Paint background
  background(#000000);
  
  // Turn canvas to get flower's best angle
  rotate(radians(petalrotation / 5));
  
  // Draw first layer of petals, rotating after each one
  fill(petalcolor);
  for (int i = 0; i < petalnumber; i++) {
    ellipse(0, petaldistance, petalwidth, petallength);
    rotate(radians(petalrotation));
  }
  
  // Save file for first layer
  spritename = "spr_flower"+spritenumber+"a.png";
  save(spritename);
  
  // Offset the layers
  rotate(radians(petalrotation / 2));
  
  // Paint background
  background(#000000);
  
  // Draw second layer of petals, rotating after each one
  fill(petalcolor);
  for (int i = 0; i < petalnumber; i++) {
    ellipse(0, petaldistance, petalwidth, petallength);
    rotate(radians(petalrotation));
  }
  
  // Save file for second layer
  spritename = "spr_flower"+spritenumber+"b.png";
  save(spritename);

}

// Paint background
background(#000000);

// Draw center circle
stroke(#000000);
fill(#FFFF00); // yellow
ellipse(0, 0, centerwidth, centerwidth);

// Save file for center circle
save("spr_flower_center.png");

}
