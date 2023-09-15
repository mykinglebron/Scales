void setup(){
  size(800,800);
  background(0,0,0);
}



void draw(){
for(int y=-20; y < 900; y=y+120){
    for(int x= 20; x < 900; x=x+70){
        scale(x,y);
    }
}
 
  //120 tall
  //70 wide
 
  
}


void scale(int x, int y){
 noStroke();
  stroke(255, 215, 0);
  strokeWeight(2);
  fill(15,15,15);
 //left tri 
  beginShape();
   vertex(x,y);//400,400
   vertex(x-35,y+70);
   vertex(x,y+120);
  endShape(CLOSE);
  
   //right tri 
  beginShape();
   vertex(x,y);
   vertex(x+35,y+70);
   vertex(x,y+120);
  endShape(CLOSE);
 //main body
  beginShape();
 
  vertex(x,y);//top point
  vertex(x-30,y+30);//left point
  vertex(x,y+120);//bottom point
  vertex(x+30,y+30);//right point
  
 
  endShape(CLOSE);
 line(x,y,x,y+120);

stroke(0,0,0);
noFill();
//rect(365,400,70,120);

}
void mousePressed(){
  System.out.println(mouseX);
  System.out.println(mouseY);
}
