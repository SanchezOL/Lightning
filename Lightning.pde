int startX = (int)(Math.random()*600);

int startY = 0;

int endX = (int)(Math.random()*600);

int endY = 0;

int bobX = 150;

int bobY = 450;

String Message = "Kill Bob!";

boolean alive = true;

void setup()

{

  size(600,600);

  strokeWeight(.5);

  background(0);
  noLoop();

}

  void Bob() {
  if (alive){
  bobX = (int)(Math.random()*600);
  }
  fill (255,255,255);
  noFill();
  ellipse(bobX,bobY,20,20);
  line(bobX, bobY+10, bobX, bobY + 50);
  line(bobX, bobY+50, bobX-20, bobY + 80);
  line(bobX, bobY+50, bobX+20, bobY + 80);
  line(bobX, bobY+20, bobX+15, bobY + 50);
  line(bobX, bobY+20, bobX-15, bobY + 50);
  
}
  

void draw()

{

  stroke(252,252,252);
  background(0);
  Bob();

  while(endY < 500)

  {


   endY = startY + (int)(Math.random()*10);


   endX = startX + (int)(Math.random()*20)-10;

   line(startX,startY,endX,endY);

   startX = endX;

   startY = endY;
   


  }

fill(255,0,0);
textSize(60);
text(Message, 150, 150);

  

  

  

}

 


void mousePressed()

{

  startX = (int)(mouseX);

  startY = 0;

  endX = (int)(Math.random()*600);

  endY = 0;

  
  System.out.println(bobX);
  System.out.println(endX);
  if (bobX <= endX + 20 && bobX >= endX - 20){
  alive = false;
  Message = "You Killed Bob!";
  }
  redraw();


}