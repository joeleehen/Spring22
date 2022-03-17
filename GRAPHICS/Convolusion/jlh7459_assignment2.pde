PImage img;
PImage buff;

void setup() {
 surface.setResizable(true);
 img = loadImage("deku.png");
 surface.setSize(img.width, img.height);
 
 // create a blank image to use as a buffer
 buff= createImage(img.width, img.height, ARGB);
 // copy pixel values to buffer
 buff.copy(img, 0, 0, img.width, img.height, 0, 0, buff.width, buff.height);
}

void grayscale(PImage img) {
  
}

void contrast(PImage img) {
  
}

void gauss(PImage img, PImage imgGauss) {
  float[][] kernel = {{0.0625, 0.125, 0.0625},
                    {0.125, 0.25, 0.125},
                    {0.0625, 0.125, 0.0625}};
  img.loadPixels();
  
  // traverse through each pixel
  for (int x = 1; x < img.width - 1; x++) {
   for (int y = 1; y < img.height - 1; y++) {
    int idx = x + y * img.width;
    
    // initialize rbg values for each pixel
    float red = 0.0;
     float grn = 0.0;
     float blu = 0.0;
     
     // convolution matrix
     for (int i = 0; i < 3; i++) {
       for (int j = 0; j < 3; j++) {
         int kernelIdx = (x + i - 1) + img.width * (y + j - 1);
         red += red(img.pixels[kernelIdx]) * kernel[i][j];
         grn += green(img.pixels[kernelIdx]) * kernel[i][j];
         blu += blue(img.pixels[kernelIdx]) * kernel[i][j];
       }
     }
     red = constrain(abs(red), 0, 255);
     grn = constrain(abs(grn), 0, 255);
     blu = constrain(abs(blu), 0, 255);
   }
  }
  imgGauss.updatePixels();
}

void edge(PImage img) {
  
}

void draw() {
  image(buff, 0, 0);
  //noLoop();
}

void keyPressed() {
  if (key == 0) {    // original image
    PImage buff = img;
    image(buff, 0, 0);
  }
  if (key == 3); {    // gaussian blur
    gauss(img, buff);
    image(buff, 0, 0);
    ellipse(250, 250, 60, 60);
  }
}
