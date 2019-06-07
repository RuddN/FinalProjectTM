# FlappyBird Upgraded
~A unique spin-off of the popular game Flappy Bird in which you guide a small bird through rows of pipes for as far as you can, getting scored on the number of obstacles you successfully fly them through.~

### Difficulties or opportunities you encountered along the way.
~The toughest part of my project was calculating the correct bounds for the collision of the bird and tubes. It was especially difficult because I had to determine whether any pixel in the bird was overlapping with any pixel in the tubes. Comparing two ranges is hard because it requires multiple comparisons per dimension. It took me a full class period to figure out, but I manged to make it work, and that gave me the opportunity to very easily put a counter in the upper-right corner.~

### Most interesting piece of your code and explanation for what it does.

```Java
~for(int i=0; i<tubes.length; i++){
     if ((
     ( 
     (tubes[i].getX1()) <= (birdo.getX1()) || (tubes[i].getX1()) <= (birdo.getX2()))
     &&(((tubes[i].getX2()) >= (birdo.getX1()))||((tubes[i].getX2()) >= (birdo.getX2()))))
     && ((((tubes[i].getTopY())>=birdo.getY()))||((tubes[i].getBotY())<=birdo.getY()))){
         playing=false;
     }else if((((tubes[i].getX2())==birdo.getX1())) && playing){
       score+=1;
     }
  }~
```
~This is the code described above. It determines when you lose the game or earn a point depending on whether the bird overlaps with the tube obstacle. It utilizes methods from the bird and obstacle classes to get the x bounds for the tubes and birds, as well as their Y values and compares them using boolean operators to decide whether the two images overlap, and does this for every obstacle object in the game. If the two images do overlap, the playing variable becomes false, leading to the display of a losing screen. When the images don't overlap and you make it past the far edge of a tube, your score increments by one point.~

## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors
* **Nyah Rudd** 

## Acknowledgments
~Credit to the Flappy Bird game for the tube and bird graphics used
Thanks to Virinch and Miles for their help debugging parts of the code. c:~
