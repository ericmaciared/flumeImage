float limitPx = 1;
String imgName = "pattern1.jpg";
PImage photo;

void setup(){
  size(512, 512);
  photo = loadImage(imgName);
  System.out.println("Start");
  drawInitialSection(0, height, width/2);
}

void draw(){ 
}

void drawInitialSection(float startX, float startY, float startDim){
  //recursion break
  if(startDim < limitPx) return;
  
  //draw base rect
  drawImage(startX, startY - startDim, startDim);
  
  //vertical sections
  drawVerticalSection(startX, startY - startDim, startDim/2);
  drawVerticalSection(startX + startDim/2, startY - startDim, startDim/2);
  
  //horizontal sections
  drawHorizontalSection(startX + startDim, startY - startDim, startDim/2);
  drawHorizontalSection(startX + startDim, startY - startDim/2, startDim/2);
  
  //initial sections
  drawInitialSection(startX + startDim, startY - startDim, startDim/2);
}

void drawVerticalSection(float startX, float startY, float startDim){
  //recursion break
  if(startDim < limitPx) return;
  
   System.out.println("Image at x: " + startX + " y: " + (startY - startDim) + " size: " + startDim);
  drawImage(startX, startY - startDim, startDim);
  
  drawVerticalSection(startX, startY - startDim, startDim/2);
  drawVerticalSection(startX + startDim/2, startY - startDim, startDim/2);
}

void drawHorizontalSection(float startX, float startY, float startDim){
  //recursion break
  if(startDim < limitPx) return;
  
  drawImage(startX, startY, startDim);
  
  drawHorizontalSection(startX + startDim, startY, startDim/2);
  drawHorizontalSection(startX + startDim, startY + startDim/2, startDim/2);
}

void drawImage(float x, float y, float dim){
  photo = loadImage(imgName);

  photo.resize(int(dim), int(dim));
  image(photo, x, y);
}
