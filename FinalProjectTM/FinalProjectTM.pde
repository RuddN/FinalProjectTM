Bckgnd[] clds=new Bckgnd[25];

void setup(){
  size(600,400);
  for(int i=0; i<clds.length; i++){
     clds[i]=new Bckgnd();
  }
}

void draw(){
  background(#57D3F6);
  for (int i=0; i<clds.length; i++){
    clds[i].showCloud();
    clds[i].moveCloud();
  }
  fill(255,255,130);
  ellipse(100,100,75,75);
  fill(68, 153, 94);
  rect(0,340,600,400);
}

public class Bckgnd{
  private int cx, cy;
  private int cspeed;
  private int csize;
  
  public Bckgnd(){
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
    
  void upperObstacle(){
    noStroke();
    fill(255, 255, 255);
    ellipse(cx, cy, csize, csize);
    ellipse(cx+(csize/2), cy-(csize/3),csize,csize);
    ellipse(cx+(csize/2), cy+(csize/3),csize/1.25,csize/1.25);
    ellipse(cx+csize, cy, csize, csize);
    ellipse(cx+(csize*1.5), cy, csize/2, csize/2);
    ellipse(cx-(csize/2), cy, csize/2, csize/2);
  }
  
  void moveUpper(){
    cx-=cspeed;
    if (cx+csize<-1){
      cx=600;
      cy=(int)(Math.random()*250+5);
      cspeed=(int)(Math.random()*20+1);
      csize=(int)(Math.random()*60+10);
    }
    
    
  }
}
