void setup(){
  size(1000,1000);
  textAlign(CENTER);
  noLoop();
}
void draw(){
  background(127);
  int nums = 0;
  for(int x = 0; x<=1000; x = x+20){
    for(int y = 0; y<=1000; y = y+20){
      Die steve = new Die(x,y);
      steve.show();
      nums += steve.counter;
    }
  }
  text(nums+ "Total Dots", 490, 500);
}
void mousePressed(){
  redraw();
}
class Die
{
  int myX, myY, counter;
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    counter = (int)((Math.random()*6) + 1);
  }
  void show()
  {
    fill(255);
    rect(myX,myY,30, 30);
    fill(0);
    if(counter == 1){
      ellipse(myX+10,myY+10,2,2);
  }
    else if(counter == 2){
      ellipse(myX+10,myY+5,2,2);
      ellipse(myX+10,myY+15,2,2);
  }
    else if(counter == 3){
      ellipse(myX+5,myY+5,2,2);
      ellipse(myX+10,myY+10,2,2);
      ellipse(myX+15,myY+15,2,2);
  }
    else if(counter == 4){
      ellipse(myX+5,myY+5,2,2);
      ellipse(myX+15,myY+5,2,2);
      ellipse(myX+5,myY+15,2,2);
      ellipse(myX+15,myY+15,2,2);
  }
   else if(counter == 5){
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
  }
  }
}
