void setup() {
  size(400, 400);
  smooth();
  frameRate(1);
}

void draw() {

background(#ffffff);

// Set the genotype here
int colorgene1 = int(random(1, 7));
int colorgene2 = int(random(1, 7));
int typegene1 = int(random(1, 7));
int typegene2 = int(random(1, 7));
int sizegene1 = int(random(1, 7));
int sizegene2 = int(random(1, 7));

// Initialize variables

color petalcolor1 = #ffffff;
color petalcolor2 = #ffffff;
int petalnumber;
float flowersize;

// Resolve color genes to color constants

switch(colorgene1) {
  case 1: 
    petalcolor1 = #ff0000; //red
    break;
  case 2: 
    petalcolor1 = #ffa500; //orange
    break;
  case 3: 
    petalcolor1 = #ffff00; //yellow
    break;
  case 4: 
    petalcolor1 = #0000ff; //blue
    break;
  case 5: 
    petalcolor1 = #00ff00; //green
    break;
  case 6: 
    petalcolor1 = #7f00ff; //violet
    break;
}

switch(colorgene2) {
  case 1: 
    petalcolor2 = #ff0000; //red
    break;
  case 2: 
    petalcolor2 = #ffa500; //orange
    break;
  case 3: 
    petalcolor2 = #ffff00; //yellow
    break;
  case 4: 
    petalcolor2 = #0000ff; //blue
    break;
  case 5: 
    petalcolor2 = #00ff00; //green
    break;
  case 6: 
    petalcolor2 = #7f00ff; //violet
    break;
}

// Resolve type genes to petal number (the lower number is the dominant gene)

if (typegene1 >= typegene2) {
  petalnumber = typegene2 + 2;
} else {
  petalnumber = typegene1 + 2;
}

// Resolve size genes to flower size (use the average of the two genes)
float sizeaverage = (sizegene1 + sizegene2) / 2;
flowersize = ((6 + sizeaverage) / 10);

// Set shape sizes
int petallength = round(150 * flowersize);
int petalwidth = round((120 - (petalnumber * 10)) * flowersize);
int petaldistance = round(-60 * flowersize);
int centerwidth = round(90 * flowersize);

float petalrotation = 360 / petalnumber;

// Set center point
translate(width/2, height/2);

rotate(radians(random(360)));

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

println(colorgene1, colorgene2, typegene1, typegene2, sizegene1, sizegene2);

}
