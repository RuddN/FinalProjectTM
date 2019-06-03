Starter[] clds=new Starter[25];
Obstacle[] tubes=new Obstacle[4];
int[] xs=new int[4];
int[] ys=new int[4];
int[] spaces=new int[4];
Bird birdo=new Bird();
boolean playing = false;
PImage bird, top, bottom;

void setup(){
  size(600,400);
  for(int i=0; i<clds.length; i++){
     clds[i]=new Starter();
  }
  for(int i=0; i<tubes.length; i++){
     tubes[i]=new Obstacle(i);
  }
  bird = loadImage("birdo.PNG");
  top = loadImage("top.png");
  bottom = loadImage("bottom.png");
}

void update(){
}

void draw(){
  background(#57D3F6);
  fill(255,255,130);
  ellipse(100,100,75,75);
  for (int i=0; i<clds.length; i++){
    clds[i].showCloud();
    clds[i].moveCloud();
  }
  birdo.showBird();
  birdo.moveBird();
  for (int i=0; i<tubes.length; i++){
    tubes[i].showTube();
    tubes[i].moveTube();
  }
  birdo.printLoss();
  fill(68, 153, 94);
  rect(0,340,600,400);
}

public class Starter{
  private int cx, cy;
  private int cspeed;
  private int csize;
  
  public Starter(){
    cx=600;
    cy=(int)(Math.random()*250+5);
    cspeed=(int)(Math.random()*20+1);
    csize=(int)(Math.random()*60+10);
  }
  
  void showCloud() {
    noStroke();
    fill(255, 255, 255);
    ellipse(cx, cy, csize, csize);
    ellipse(cx+(csize/2), cy-(csize/3),csize,csize);
    ellipse(cx+(csize/2), cy+(csize/3),csize/1.25,csize/1.25);
    ellipse(cx+csize, cy, csize, csize);
    ellipse(cx+(csize*1.5), cy, csize/2, csize/2);
    ellipse(cx-(csize/2), cy, csize/2, csize/2);
  }
  
  void moveCloud() {
    cx-=cspeed;
    if (cx+csize<-1){
      cx=600;
      cy=(int)(Math.random()*250+5);
      cspeed=(int)(Math.random()*20+2);
      csize=(int)(Math.random()*60+10);
    }
  }
}
