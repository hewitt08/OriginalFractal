public void setup(){
  size(1000,1000);
  fill(200,0,0);
  carpetFractal(width/2, height/2, 600, 100, 0);
}

public void carpetFractal(int x, int y, int size, int red, int blue){
  noStroke();
  //fill((int)(Math.random()*200),(int)(Math.random()*200),(int)(Math.random()*200));
  fill(red, 0, blue);
  ellipse(x, y, size, size);
  if(size>=1){
    carpetFractal(x+size, y, size/2, red+10, blue+20);
    carpetFractal(x, y+size, size/2, red+10, blue+20);
    carpetFractal(x, y-size, size/2, red+10, blue+20);
    carpetFractal(x-size, y, size/2, red+10, blue+20);
  }
}
