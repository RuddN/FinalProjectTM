public class Bird {
  private int bx, by;

  public Bird() {
    bx=150;
    by=125;
  }

  void showBird() {
    image(bird, bx, by, 52, 37);
  }

  void moveBird() {
    if (!mousePressed && by < height-25)
      by += 7;
    else if (by >= 25 && by <= 320)
      by -= 11;
  }

  int getX1() {
    return bx;
  }
  int getX2() {
    return bx+30;
  }

  int getY() {
    return by;
  }
}
