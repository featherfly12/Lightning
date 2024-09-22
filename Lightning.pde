int xStart;
int yStart;
int endX;
int endY;
int reset;

void setup()
{
  size(500,500);
      background(255, 246, 207);
      fill(255, 204, 0);
fill(242, 200, 170);
rect(0,400,500,100);
reset = 0;

noLoop();
}
void draw()
{
 if (reset <20){
    xStart = 250;
    yStart=0;

    for(int z = 0; z <=90; z++){
      stroke(255, 204, 0);
      endY=int(random(9));
      endX=int(random(-10,10));
      strokeWeight(5);
 
    line(xStart, yStart, xStart+endX, yStart+endY);
    xStart = xStart+endX;
    yStart = yStart+endY;
 
    fill(201, 191, 155);
    noStroke();
    beginShape();
    vertex(200,0);
    vertex(200,0);
    vertex(150,50);
    vertex(350,50);
    vertex(300,0);
    vertex(300,0);
    endShape();
    String ramen = "Ramen";
    String chute = "Chute";
    fill(0);
    textSize(25);
    text(ramen, 210,20);
    text(chute, 215,40);

    strokeWeight(4);
    stroke(0);
    fill(255);
    arc(250, 350, 300, 200, 0, PI/1);
    stroke(0);
    line(100,350,400,350);
    }
 }
  else if (reset == 21){
    background(255, 246, 207);
    textSize(100);
    strokeWeight(10);
    stroke(122, 86, 35);
    fill(158, 134, 66);
    triangle(335,230,320,250,250,400);
    translate(-20,-5);
    triangle(335,230,320,250,250,400);
    translate(20,5);
    
    fill(0);
    text("Ramen!", 80,100);
    fill(242, 200, 170);
    noStroke();
    rect(0,400,600,200);
    strokeWeight(5);
    stroke(0);
    fill(255, 204, 0);
    ellipse(250,350,270,150);
    stroke(0);
    line(100,350,400,350);
    line(100,350,350,300);
    line(170,350,370,320);
    line(190,350,380,340);
    line(120,330,330,290);
    line(140,305,290,280);
    strokeWeight(15);
    stroke(227, 2, 103);
    fill(255);
    ellipse(180,330,50,50);
    ellipse(140,350,50,50);
    strokeWeight(5);
    stroke(0);
    fill(255);
    arc(250, 350, 300, 200, 0, PI/1);
    line(100,350,400,350);

    
  }

}


void mousePressed()
{  

redraw();
reset++;
}
