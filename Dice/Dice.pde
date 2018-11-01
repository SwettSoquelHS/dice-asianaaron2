PFont font1;

int sum = 0;


Die die1,die2,die3,die4,die5,die6,die7,die8,die9;

void setup() {
  size(650, 650);
  font1 = loadFont("Bahnschrift-48");
  noLoop();
  die1 = new Die(50, 50);
  die2 = new Die(250, 50);
  die3 = new Die(450, 50);
  die4 = new Die(50, 250);
  die5 = new Die(250, 250);
  die6 = new Die(450, 250);
  die7 = new Die(50, 450);
  die8 = new Die(250, 450);
  die9 = new Die(450,450);
  
}
void draw() {
  background(255);
  textFont(font1, 25);
  fill(0);
  text("Total number dice:" + sum, 50, 600);
  die1.show();
  die2.show();
  die3.show();
  die4.show();
  die5.show();
  die6.show();
  die7.show();
  die8.show();
  die9.show();
}
void mousePressed() {
  die1.roll();
  die2.roll();
  die3.roll();
  die4.roll();
  die5.roll();
  die6.roll();
  die7.roll();
  die8.roll();
  die9.roll();
  redraw();
  
}
class Die {
  int dieRoll;
  int xPos, yPos;
  Die(int x, int y) {
    xPos = x;
    yPos = y;
    roll();

  }
  void roll() {
    dieRoll = (int)(Math.random()*6)+1;

  }
  void show() {
    fill(255);
    strokeWeight(1);
    rect(xPos, yPos, 150, 150);
    if(dieRoll == 1){
      pushMatrix();
      translate(xPos,yPos);
      fill(255,0,0);
      ellipse(75,75,20,20);
      popMatrix();
      sum = sum + 1;
    }
    if(dieRoll == 2){
      pushMatrix();
      translate(xPos,yPos);
      fill(255,69,0);
      ellipse(35,35,20,20);
      ellipse(115,115,20,20);
      popMatrix();
      sum = sum + 2;
    }
    if(dieRoll == 3){
      pushMatrix();
      translate(xPos,yPos);
      fill(255,255,0);
      ellipse(35,35,20,20);
      ellipse(75,75,20,20);
      ellipse(115,115,20,20);
      popMatrix();
      sum = sum + 3;
    }
    if(dieRoll == 4){
      pushMatrix();
      translate(xPos,yPos);
      fill(0,255,0);
      ellipse(35,35,20,20);
      ellipse(115,35,20,20);
      ellipse(35,115,20,20);
      ellipse(115,115,20,20);
      popMatrix();
      sum = sum + 4;
    }
    if(dieRoll == 5){
      pushMatrix();
      translate(xPos,yPos);
      fill(0,0,255);
      ellipse(35,35,20,20);
      ellipse(115,35,20,20);
      ellipse(75,75,20,20);
      ellipse(35,115,20,20);
      ellipse(115,115,20,20);
      popMatrix();
      sum = sum + 5;
    }
    if(dieRoll == 6){
      pushMatrix();
      translate(xPos,yPos);
      fill(75,0,130);
      ellipse(35,35,20,20);
      ellipse(115,35,20,20);
      ellipse(35,75,20,20);
      ellipse(115,75,20,20);
      ellipse(35,115,20,20);
      ellipse(115,115,20,20);
      popMatrix();
      sum = sum + 6;
    }
  }
}
