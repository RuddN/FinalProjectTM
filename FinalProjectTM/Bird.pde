public class Bird{
  private int bx, by;
  private int bspeed;
  
  public Bird(){
    bx=150;
    by=125;
    bspeed=2;
  }
  
  void showBird(){
    image(bird, bx, by, 52, 37);
  }
  
  void moveBird(){
    by+=bspeed;
    if (by>=225||by<=125){
      bspeed*=-1;
    }
  }
}
