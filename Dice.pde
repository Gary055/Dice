void setup(){
  noLoop();
  size(1000,1000);
}
void draw(){
  background(127);
}
void mousePressed(){
  
}
class Die
{
  int myX, myY, counter, side;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void show()
  {
    fill(255);
    square(myX,myY,10);
    fill(0);
    counter = (int)(Math.random()*6);
    if(counter == 0){
    side = 1;}
    else if(counter == 1){
    side = 2;}
    else if(counter == 2){
    side = 3;}
    else if(counter == 4){
    side = 5;}
    else {
    side = 6;}
  }
}
