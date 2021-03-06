Starter[] clds=new Starter[25];
Obstacle[] tubes=new Obstacle[4];
int[] spaces=new int[4];
Bird birdo=new Bird();
boolean playing = true;
PImage bird, top, bottom;
int score;

void setup() {
  size(600, 400);
  for (int i=0; i<clds.length; i++) {
    clds[i]=new Starter();
  }
  for (int i=0; i<tubes.length; i++) {
    tubes[i]=new Obstacle(i);
  }
  bird = loadImage("birdo.PNG");
  top = loadImage("top.png");
  bottom = loadImage("bottom.png");
}

void draw() {
  background(#57D3F6);
  fill(255, 255, 130);
  ellipse(100, 100, 75, 75);

  for (int i=0; i<clds.length; i++) {
    clds[i].showCloud();
    clds[i].moveCloud();
  }

  if (playing) {
    birdo.showBird();
    birdo.moveBird();
  }

  for (int i=0; i<tubes.length; i++) {
    tubes[i].showTube();
    tubes[i].moveTube();
  }

  for (int i=0; i<tubes.length; i++) {
    if ((
      ( 
      (tubes[i].getX1()) <= (birdo.getX1()) || (tubes[i].getX1()) <= (birdo.getX2()))
      &&(((tubes[i].getX2()) >= (birdo.getX1()))||((tubes[i].getX2()) >= (birdo.getX2()))))
      && ((((tubes[i].getTopY())>=birdo.getY()))||((tubes[i].getBotY())<=birdo.getY()))) {
      playing=false;
    } else if ((((tubes[i].getX1())==birdo.getX1())) && playing) {
      score+=1;
    }
  }
  if (birdo.getY()>=height-25) {
    playing=false;
  } 

  fill(68, 153, 94);
  rect(0, 340, 600, 400);

  if (playing==false) {
    fill(68, 153, 94);
    textSize(100);
    text("You Lose!", 75, 200);
    fill(255, 255, 255);
    textSize(75);
    text("Score:" + score, 160, 320);
  } else if (playing) {
    textSize(40);
    text(score, 530, 50);
  }
}

public class Starter {
  private int cx, cy;
  private int cspeed;
  private int csize;

  public Starter() {
    cx=600;
    cy=(int)(Math.random()*250+5);
    cspeed=(int)(Math.random()*20+1);
    csize=(int)(Math.random()*60+10);
  }

  void showCloud() {
    noStroke();
    fill(255, 255, 255);
    ellipse(cx, cy, csize, csize);
    ellipse(cx+(csize/2), cy-(csize/3), csize, csize);
    ellipse(cx+(csize/2), cy+(csize/3), csize/1.25, csize/1.25);
    ellipse(cx+csize, cy, csize, csize);
    ellipse(cx+(csize*1.5), cy, csize/2, csize/2);
    ellipse(cx-(csize/2), cy, csize/2, csize/2);
  }

  void moveCloud() {
    cx-=cspeed;
    if (cx+csize<-1) {
      cx=600;
      cy=(int)(Math.random()*250+5);
      cspeed=(int)(Math.random()*20+2);
      csize=(int)(Math.random()*60+10);
    }
  }
}
