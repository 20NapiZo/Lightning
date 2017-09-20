//Zoe Napier, credit to the assignment adapted from Art Simon, Lowell High School, and Mr. Smith

// these are flotes because that is what works with 'random()'
float startX = 0;
float endX = 0;
float startY = random(100,600); //will start anywhere on the y intercept
float endY =150;
float t = 25; // change the "size" of the lines
float rd = 0; //heighten the probability of stock rise

void setup(){
  size(800, 600);
  background(25);
}

void draw(){
  strokeWeight(1);
  stroke(75); // stroke color (quarter lines)
  line (200, 0, 200, 600);
  line (400, 0, 400, 600);
  line (600, 0, 600, 600);

  stroke(255); //lightning color
  endX = startX + random(0,t);
  endY = startY + random(-t-rd,t);
  line (startX, startY, endX, endY);

  startX = endX;
  startY = endY;
  
  float u = 600; //lines go to (x,600)
  int z = 150;//stroke color (lines below)
  
    strokeWeight(.25); //the lines below (the vertical grey ones)
    stroke(z);
    line(startX, startY, startX, u);
}

void mousePressed(){ // generates a new display when pressed
  background(25);//redraws background
  startX = 0;
  endX = 0;
  startY = random(100, 600);
  endY =150;
}
