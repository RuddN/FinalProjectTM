public class Bird{
  private int bx, by;
  
  public Bird(){
    bx=150;
    by=125;
  }
  
  void showBird(){
    image(bird, bx, by, 52, 37);
  }
  
  void moveBird(){
    if(!mousePressed && by < height-25)
      by += 5;
    else if(by >= 25 && by <= 320)
      by -= 9;
  }
  
  int getX(){
    return bx;
  }
  
  int getY(){
    return by;
  }
}
