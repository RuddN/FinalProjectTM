public class Obstacle{
  
  private int tx, ty;
  private int tdelay;
  
  public Obstacle(int delay){
      tx=600;
      ty=(int)(Math.random()*(-300 - -500)-500);
      tdelay=delay*300;;
  }
  
  void showTube() {
    image(tube, tx+tdelay, ty);
  }
  
  void moveTube() {
    tx-=5;
    if (tx<-100-tdelay){
      tx=600;
      ty=(int)(Math.random()*(-300 - -400)-400);
    }
  }
}
