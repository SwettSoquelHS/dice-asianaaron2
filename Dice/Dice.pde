Die die1,die2,die3,die4,die5,die6,die7,die8,die9;

void setup() {
  size(600, 600);
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
  background(100);
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
    dieRoll = 5;
    //dieRoll = (int)(Math.random()*6)+1;

  }
  void show() {
    fill(255);
    strokeWeight(2);
    rect(xPos, yPos, 100, 100);
    if (dieRoll == 1){
      pushMatrix();
      translate(xPos,yPos);
      fill(0);
      ellipse(50,50,15,15);
      popMatrix();
    }
    if(dieRoll == 2){
      pushMatrix();
      translate(xPos,yPos);
      fill(0);
      ellipse(30,25,15,15);
      ellipse(70,75,15,15);
      popMatrix();
    }
    if(dieRoll == 3){
      pushMatrix();
      translate(xPos,yPos);
      fill(0);
      ellipse(30,25,15,15);
      ellipse(50,50,15,15);
      ellipse(70,75,15,15);
      popMatrix();
    }
    if(dieRoll == 4){
      pushMatrix();
      translate(xPos,yPos);
      fill(0);
      ellipse(30,25,15,15);
      ellipse(70,25,15,15);
      ellipse(30,74,15,15);
      ellipse(70,75,15,15);
      popMatrix();
    }
    if(dieRoll == 5){
      pushMatrix();
      translate(xPos,yPos);
      fill(0);
      ellipse(30,25,15,15);
      ellipse(70,25,15,15);
      ellipse(50,50,15,15);
      ellipse(30,74,15,15);
      ellipse(70,75,15,15);
  }
}
