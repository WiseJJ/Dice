int dieNum;
int runningtotal=0;
int roundtotal=0;
int totalrolls=0;
Die d;
Die1 d1;
Die2 d2;
Die3 d3;
Die4 d4;
Die5 d5;
Die6 d6;
void setup()
{
  size(550,770);
  d = new Die();
  d1= new Die1();
  d2= new Die2();
  d3 = new Die3();
  d4 = new Die4();
  d5 = new Die5();
  d6 = new Die6();
  noLoop();
}
void draw()
{
  clear();
  totalrolls++;
  roundtotal=0;
  background(37,140,60);
  for(int i =30; i<560; i+=130){
    for(int k = 30; k<430; k+=130){
      d.roll();
  if(dieNum==1){
    d1.show(k,i);
    roundtotal+=1;
  }
  if(dieNum==2){
    d2.show(k,i);
    roundtotal+=2;
  }
  if(dieNum==3){
    d3.show(k,i);
    roundtotal+=3;
  }
  if(dieNum==4){
    d4.show(k,i);
    roundtotal+=4;
  }
  if(dieNum==5){
    d5.show(k,i);
    roundtotal+=5;
  }
  if(dieNum==6){
    d6.show(k,i);
    roundtotal+=6;
  }
    }
  }
 textSize(20);
text("Running total = "+runningtotal, 10, 690); 
textSize(20);
text("Round total    = "+roundtotal, 10, 715); 
textSize(20);
text("Total rolls      = "+totalrolls, 10, 740); 
textSize(20);
text("Average total  = "+((int)Math.round((double)runningtotal/totalrolls)), 10, 765); 

}
void mousePressed()
{
redraw();


}
class Die //models one single dice cube
{
  //variable declarations here
  Die() //constructor
  {
    //variable initializations here
  }
void roll(){
  dieNum = (int)(Math.random()*6+1);
  
}
}

class Die1{
   Die1(){
  }
   void show(int x,int y){
    fill(255);
    rect(x,y,100,100,20);
     fill(0);
    ellipse(x+50,y+50,15,15);
   
    runningtotal+=1;
  }
}

class Die2{
  Die2(){
  }
  void show(int x,int y){
        fill(255);
    rect(x,y,100,100,20);
    fill(0);
    ellipse(x+75, y+25, 15,15);
    ellipse(x+25, y+75, 15,15);
    runningtotal+=2;
  }
}
class Die3{
   Die3(){
  }
  public void show(int x,int y){
        fill(255);
    rect(x,y,100,100,20);
    runningtotal+=3;
    fill(0);
    ellipse(x+75, y+25, 15,15);
    ellipse(x+25, y+75, 15,15);
    ellipse(x+50,y+50,15,15);
  }
}
class Die4{
   Die4(){
  }
  public void show(int x,int y){
        fill(255);
    rect(x,y,100,100,20);
    runningtotal +=4;
    fill(0);
    ellipse(x+25, y+25,15,15);
    ellipse(x+75, y+25, 15,15);
    ellipse(x+25, y+75, 15,15);
    ellipse(x+75, y+75,15,15);
  }
}
class Die5{
   Die5(){
  }
 void show(int x,int y){
        fill(255);
    rect(x,y,100,100,20);
    runningtotal+=5;
    fill(0);
    ellipse(x+25, y+25,15,15);
    ellipse(x+75, y+25, 15,15);
    ellipse(x+25, y+75, 15,15);
    ellipse(x+75, y+75,15,15);
    ellipse(x+50,y+50,15,15);
  }
}
class Die6{
   Die6(){
  }
void show(int x,int y){
        fill(255);
    rect(x,y,100,100,20);
    fill(0);
    ellipse(x+25, y+25,15,15);
    ellipse(x+75, y+25, 15,15);
    ellipse(x+25, y+75, 15,15);
    ellipse(x+75, y+75,15,15);
    ellipse(x+25, y+50,15,15);
     ellipse(x+75, y+50,15,15);
    runningtotal+=6;
  }
}