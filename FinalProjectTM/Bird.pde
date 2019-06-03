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
    if(!mousePressed && by < height-25)
      by += 5;
    else if(by >= 25 && by <= 320)
      by -= 9;
  }
  
  void printLoss(){
    for(int i=0; i<tubes.length; i++){
        if (((xs[i]+68)==bx)&&(((ys[i]+420)>=by)||((ys[i]+420+spaces[i])<=by))){
          fill(68, 153, 94);
          textSize(100);
          text("You Lose!", 75, 200);
        }
    }
    if(by>=height-25){
      fill(68, 153, 94);
      textSize(100);
      text("You Lose!", 75, 200);
    } 
  }
}
