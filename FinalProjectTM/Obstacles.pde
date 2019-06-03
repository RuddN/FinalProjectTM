public class Obstacle{
  
  private int tx, ty;
  private int spacing;
  private int inc;
  
  public Obstacle(int num){
      tx=600+(300*num);
      ty=(int)(Math.random()*(-290 - -390) - 390);
      spacing=(int)(Math.random()*(610-575)+575);
      inc=num;
      xs[inc]=tx;
      ys[inc]=ty;
      spaces[inc]=spacing;
  }
  
  void showTube() {
    image(top, tx, ty);
    image(bottom, tx, ty+spacing);
  }
  
  void moveTube() {
    tx-=5;
    if (tx<-300){
      tx+=1200;
      ty=(int)(Math.random()*(-290 - -390) - 390);
      spacing=(int)(Math.random()*(610-575)+575);
      xs[inc]=tx;
      ys[inc]=ty;
      spaces[inc]=spacing;
    }
  }
}
