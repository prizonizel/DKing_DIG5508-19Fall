# Even though there are multiple objects, we still only need one class. 
# No matter how many cookies we make, only one cookie cutter is needed.
class Car(object):
# The Constructor is defined with arguments.
    def __init__(self, c, xpos, ypos, xspeed):
        self.c = c
        self.xpos = xpos
        self.ypos = ypos
        self.xspeed = xspeed
        
    def display(self):
        stroke(0)
        fill(self.c)
        rectMode(CENTER)
        rect(self.xpos, self.ypos, 20, 10);
    
    def drive(self):
        self.xpos = self.xpos + self.xspeed;
        if self.xpos > width:
            self.xpos = 0

class Tree(object):
    
    def __init__(self, xpos, ypos, tallness):
        self.xpos = xpos
        self.ypos = ypos
        self.tallness = tallness
        
    def display(self):
        
        # trunk
        stroke(0)
        fill(color(165, 42, 42)) # brown
        rectMode(CENTER)
        rect(self.xpos, self.ypos, 6, self.tallness)
        
        # leaves
        fill(color(0,100,0)) # dark green
        ellipse(self.xpos, self.ypos-self.tallness, 20, self.tallness)

class Road(object):
    
    def __init__(self, xpos, ypos):
        self.xpos = xpos
        self.ypos = ypos
    
    def display(self):
        stroke(0)
        fill(color(100,100,100)) # dark gray
        rectMode(CENTER)
        rect(self.xpos, self.ypos, 25, 25)
        fill(color(255, 255, 0)) # yellow
        rect(self.xpos, self.ypos, 20, 5)
        
class Crosswalk(object):
    
    def __init__(self, xpos, ypos):
        self.xpos = xpos
        self.ypos = ypos
    
    def display(self):
        stroke(0)
        fill(color(100,100,100)) # dark gray
        rectMode(CENTER)
        rect(self.xpos, self.ypos, 25, 25)
        fill(color(255, 255, 0)) # yellow
        rect(self.xpos, self.ypos, 20, 5)
        fill(color(255,255,255)) #white
        rect(self.xpos, self.ypos-9, 15, 3)
        rect(self.xpos, self.ypos-3, 15, 3)
        rect(self.xpos, self.ypos+3, 15, 3)
        rect(self.xpos, self.ypos+9, 15, 3)

import random

myCar1 = Car(color(255, 0, 0), 0, 100, 2)
myCar2 = Car(color(0, 255, 255), 0, 10, 1)

# trees array
trees = []
for i in range(5):
    trees.append(Tree((30*i)+30, 70, random.randint(12,36)))

# roads array
roads = []

roadtype = 0

def setup():
  size(200,200)

def draw(): 
  background(255)
  for i in range(len(roads)):
    roads[i].display()
  myCar1.drive()
  myCar1.display()
  myCar2.drive()
  myCar2.display()
  for i in range(len(trees)):
      trees[i].display()
  if (roadtype == 0):
    instruction = "Click to place road. Press C to switch to crosswalk."
  if (roadtype == 1):
    instruction = "Click to place crosswalk. Press R to switch to road."
  text(instruction, 100, 160, 180, 30)

# this function returns a random color
def newcolor():
    c = color(random.randint(0,255),random.randint(0,255),random.randint(0,255))
    return c

# change car color when car's number is pressed
def keyPressed():
    global roadtype
    if (key == '1'):
        myCar1.c = newcolor()
    if (key == '2'):
        myCar2.c = newcolor()
    if (key == 'r'):
        roadtype = 0
    if (key == 'c'):
        roadtype = 1

# creates a road object at mouse click
def mousePressed():
    if (roadtype == 0):
        roads.append(Road(mouseX, mouseY))
    if (roadtype == 1):
        roads.append(Crosswalk(mouseX, mouseY))
