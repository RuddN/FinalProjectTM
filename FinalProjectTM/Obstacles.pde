public class Obstacle {

  private int tx, ty;
  private int spacing;

  public Obstacle(int num) {
    tx=600+(300*num);
    ty=(int)(Math.random()*(-290 - -390) - 390);
    spacing=(int)(Math.random()*(610-575)+575);
  }

  void showTube() {
    image(top, tx, ty);
    image(bottom, tx, ty+spacing);
  }

  void moveTube() {
    tx-=5;
    if (tx<-300) {
      tx+=1200;
      ty=(int)(Math.random()*(-290 - -390) - 390);
      spacing=(int)(Math.random()*(610-575)+575);
    }
  }

  int getX1() {
    return tx;
  }

  int getX2() {
    return tx+68;
  }

  int getTopY() {
    return ty+420;
  }

  int getBotY() {
    return ty+spacing;
  }
}
