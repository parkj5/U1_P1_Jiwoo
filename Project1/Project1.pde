float x= 500;
float y= 760;
float x1=600;
float x2=200;
float y1=400;
float y2=100;
float z=800;

PImage Street;
PImage Motorcycle1;
PImage Motorcycle2;
PImage Bus;
PImage Car;
PImage Car2;
PImage Goal;


void setup()
{
  size(800,800);
  imageMode(CENTER);
  rectMode(CENTER);
  
  Street=loadImage("Street.png");
  Street.resize(800,800);
  
  Motorcycle1=loadImage("Motocycle 1.png");
  Motorcycle1.resize(200,100);
  
  Motorcycle2=loadImage("Motorcycle2.png");
  Motorcycle2.resize(180,90);
  
  Car=loadImage("Car.png");
  Car.resize(300,150);
  
  Car2=loadImage("Car2.png");
  Car2.resize(200,100);
  
  Bus=loadImage("Bus.png");
  Bus.resize(300,100);
  
  Goal=loadImage("Goal.jpg");
  Goal.resize(800,800);
  
  //first lane: 430~700
  //second lane: 110~400
}

void draw()
{
  background(0);
  image(Street,400,400);
  image(Motorcycle1,x1,650);
  x1=x1+10;
 if(x1>850)
 {
   x1=0;
 }
  
  image(Motorcycle2,x2,330);
 x2=x2-11;
  if(x2<-50)
  {
    x2=850;
  }
  
  image(Car,y1,190);
  y1= y1-8;
  if(y1<-150)
  {
    y1=900;
  }
  
  image(Car2,y2,500);
  y2=y2+9;
  if(y2>850)
  {
    y2=-100;
  }
  
  image(Bus,z,180);
  z=z-8;
  if(z<-150)
  {
    z= 900;
  }
  
  
  ellipse(x,y,40,40);
  if(y<60)
  {
    image(Goal,400,400);
  }
  
 
  
  if(keyPressed)
  {
    if(key== 'd' || key== 'D')
  {
    x=x+3;
  }
  if(key== 'a' || key=='A')
  {
    x=x-3;
  }
  if(key== 'w' || key=='W')
  {
    y=y-3;
  }
    if(key== 's' || key=='S')
  {
    y=y+3;
  }
}

if(dist(x,y,x1,650)<55)
{
  y=760;
}
if(dist(x,y,x2,330)<65)
{
  y=760;
}
if(dist(x,y,y1,190)<80)
{
  y=760;
}
if(dist(x,y,y2,500)<70)
{
  y=760;
}
if(dist(x,y,z,180)<70)
{
  y=760;
}
}

//At draw-  if(dist(X,Y,X2,Y2)<r1+r2) r1, r2 is the width divided into 2