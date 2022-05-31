Histogram histogram = new Histogram();
PImage img;

void setup() {
  size(650, 500);
  img = loadImage("mørkerød_baggrund.jpg");
  histogram.loadData();
  clear();
  histogram.display();
}

void draw(){
  clear();  
  image(img,0,0);
  histogram.display();

}

void keyPressed(){

  
  clear();
  if(key=='2'){ histogram.selectedYear = histogram.selectedYear + 1;}
  if(key=='1'){ histogram.selectedYear = histogram.selectedYear - 1;}
  
}
