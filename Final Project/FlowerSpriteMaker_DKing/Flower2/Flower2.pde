void setup() {
  size(50, 50);
  smooth();
  frameRate(1);
}

void draw() {

background(#800080);

// Initialize variables
color petalcolor1 = #ffffff;
color petalcolor2 = #ffffff;
int petalnumber = 4;
int petallength = 26;
int petalwidth = 23 - (petalnumber * 2);
int petaldistance = -11;
int centerwidth = 16;
float petalrotation = 360 / petalnumber;
stroke(153);

// Set center point
translate(width/2, height/2);

// Turn canvas to get flower's best angle
rotate(radians(petalrotation / 5));

// Draw first layer of petals, rotating after each one
fill(petalcolor1);
for (int i = 0; i < petalnumber; i++) {
  ellipse(0, petaldistance, petalwidth, petallength);
  rotate(radians(petalrotation));
}

// Offset the layers
rotate(radians(petalrotation / 2));

// Draw second layer of petals, rotating after each one
fill(petalcolor2);
for (int i = 0; i < petalnumber; i++) {
  ellipse(0, petaldistance, petalwidth, petallength);
  rotate(radians(petalrotation));
}

// Draw center circle
fill(#fff9bb); // light yellow
ellipse(0, 0, centerwidth, centerwidth);
}
