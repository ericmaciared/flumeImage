void setup(){
  size(512, 512);
  background(0);
}

void draw(){
  int iterations = int(log(width)/log(2));

  for(int i = 0; i < 2; i++){
    //start on 2 -> 256 squares top 255 bottom = 511
    //start on 4 -> 128 squares top 127 bottom = 255
    
    int squares = width / (i+1); //number of squares per iteration +1
    float factor = pow(2, i+1); //size of square
    
    //draw horizontal iteration
    for(int h = 0; h <squares / 2; h++){
      rect(factor*h, 0, factor, factor);
    }
    
    //draw vertical iteration
    for(int h = 0; h <squares / 2; h++){
      rect(width-factor, factor*h, factor, factor);
    }
  }
  
  
}
