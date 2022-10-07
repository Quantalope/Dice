 void setup()
  {
    background(255);
    size(400,400);
    noLoop();
  }
  void draw()
  {
    int sum = 0;
    translate(15,15);
    for(int i = 0; i<4; i++){
      for(int n = 0; n<5; n++){
        Die bob = new Die(80*n,80*i);
        bob.show();
        bob.roll();
        sum+=bob.value;
      }
    }
    noStroke();
    fill(255);
    rect(140,320,80,20);
    fill(0);
    text("The sum is " + sum,145,335);
    stroke(1);
    fill(255);
    rect(50,320,50,20);
    fill(0);
    text("reroll",63,334);
  }
  void mousePressed()
  {
    if((mouseX>65&&mouseX<115)&&(mouseY>335&&mouseY<355))
      redraw();
  }
  class Die
  { 
    int myX,myY,value,sum;
      Die(int x, int y) //constructor
      {
        myX = x;
        myY = y;
      }
      void roll()
      {
        strokeWeight(10);
        value = (int)(Math.random()*6+1);
        if(value==1){
          point(myX+25,myY+25);
        }
        else if(value==2){
          point(myX+15,myY+15);
          point(myX+35,myY+35);
        }
        else if(value==3){
          point(myX+10,myY+10);
          point(myX+25,myY+25);
          point(myX+40,myY+40);
        }
        else if(value==4){
          point(myX+15,myY+15);
          point(myX+15,myY+35);
          point(myX+35,myY+15);
          point(myX+35,myY+35);
        }
        else if(value==5){
          point(myX+10,myY+10);
          point(myX+25,myY+25);
          point(myX+40,myY+40);
          point(myX+10,myY+40);
          point(myX+40,myY+10);
        }
        else if(value==6){
          point(myX+15,myY+10);
          point(myX+15,myY+25);
          point(myX+15,myY+40);
          point(myX+35,myY+10);
          point(myX+35,myY+25);
          point(myX+35,myY+40);
        }
        sum += value;
        strokeWeight(1);
      }
      void show()
      {
        fill((int)(Math.random()*200+56),(int)(Math.random()*200+56),200);
        beginShape();
        curveVertex(myX,myY+40);
        curveVertex(myX,myY+10);
        curveVertex(myX+10,myY);
        curveVertex(myX+40,myY);
        vertex(myX+10,myY);
        vertex(myX+40,myY);
        curveVertex(myX+10,myY);
        curveVertex(myX+40,myY);
        curveVertex(myX+50,myY+10);
        curveVertex(myX+50,myY+40);
        vertex(myX+50,myY+10);
        vertex(myX+50,myY+40);
        curveVertex(myX+50,myY+10);
        curveVertex(myX+50,myY+40);
        curveVertex(myX+40,myY+50);
        curveVertex(myX+10,myY+50);
        vertex(myX+40,myY+50);
        vertex(myX+10,myY+50);
        curveVertex(myX+40,myY+50);
        curveVertex(myX+10,myY+50);
        curveVertex(myX,myY+40);
        curveVertex(myX,myY+10);
        vertex(myX,myY+40);
        endShape(CLOSE);
      }
  }
