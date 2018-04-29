//import com.hamoid.*;
import processing.pdf.*;

boolean record;
//VideoExport videoExport;

int s;
float ample, ample1, ample2, ample3, ample4, alt;
float ample0, ample11, ample22;

void setup() {
  frameRate(2);

  size(500, 500);
  //videoExport = new VideoExport(this);
  //videoExport.startMovie();
}

void draw() {
  noFill();
  //beginRecord(PDF, "fulles-82####.pdf");
  background(255);
  scale(2);

  translate(150, 180);
  pushMatrix();
  rotate(radians(180));
  plantes();
  popMatrix();
  //videoExport.saveFrame();
}

void plantes() {
  noFill();
  stroke(0);
  strokeWeight(3);
  ample=0;
  ample1=random(50, 80);
  ample2=random(50, 100);
  ample3=random(50, 100);
  ample4=random(50, 80);

  ample0=0;
  ample11=ample1;
  ample22=ample2;
  alt=random(30, 50);

  beginShape();
  vertex(ample, 0);
  vertex(ample1, 0);
  vertex(ample2, alt);
  vertex(ample3, alt*2);
  vertex(ample4, alt*3);
  //
  vertex(ample4-random(50, 100), random(30, 50)*3);
  vertex(ample3-random(50, 100), random(30, 50)*2);
  vertex(ample2-random(50, 100), random(30, 50));
  endShape(CLOSE);

  beginShape();
  vertex(ample1, 0);
  vertex(ample3-random(50, 100), random(30, 50)*2);
  vertex(ample4, alt*3);
  endShape();

  //endRecord();
}

void keyPressed() {
  if (key == 'q') {
    //videoExport.endMovie();
    exit();
  }
}