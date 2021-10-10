void setup(){
  size(1000,1000);
  textAlign(CENTER);
  noLoop();
}
void draw(){
  background(127);
  for(int x = 0; x<=1000; x = x+20){
    for(int y = 0; y<=1000; y = y+20){
      Die steve = new Die(x,y);
      steve.show();
      steve.dots();
    }
  }
}
void mousePressed(){
  redraw();
}
class Die
{
  int myX, myY, counter;
  public int nums;
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    counter = (int)(Math.random()*6);
    nums = 0;
  }
  void show()
  {
    fill(255);
    square(myX,myY,30);
    fill(0);
    if(counter == 0){
      ellipse(myX+10,myY+10,2,2);
    nums += 1;
  }
    else if(counter == 1){
      ellipse(myX+10,myY+5,2,2);
      ellipse(myX+10,myY+15,2,2);
    nums += 2;
  }
    else if(counter == 2){
      ellipse(myX+5,myY+5,2,2);
      ellipse(myX+10,myY+10,2,2);
      ellipse(myX+15,myY+15,2,2);
    nums += 3;
  }
    else if(counter == 3){
      ellipse(myX+5,myY+5,2,2);
      ellipse(myX+15,myY+5,2,2);
      ellipse(myX+5,myY+15,2,2);
      ellipse(myX+15,myY+15,2,2);
    nums += 4;
  }
   else if(counter == 3){
      ellipse(myX+5,myY+5,2,2);
      ellipse(myX+15,myY+5,2,2);
      ellipse(myX+10,myY+10,2,2);
      ellipse(myX+5,myY+15,2,2);
      ellipse(myX+15,myY+15,2,2);
  }
    else {
      ellipse(myX+5,myY+5,2,2);
      ellipse(myX+15,myY+5,2,2);
      ellipse(myX+5,myY+10,2,2);
      ellipse(myX+15,myY+10,2,2);
      ellipse(myX+5,myY+15,2,2);
      ellipse(myX+15,myY+15,2,2);
    nums += 6;
  }
  }
  void dots()
  {
    text(nums+ "Total Dots", 490, 500);
  }
}
