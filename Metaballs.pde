
int screen = 800;
Ball[] balls = new Ball[10];
Ball mouse = new Ball(mouseX, mouseY);


void settings() {
  width = screen;
  height = screen;
}

void setup() {
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(random(width), random(height)); 
  }
}


void draw(){
  background(0);
  
  loadPixels();
  
  for (int i = 0; i < height; i++) {
    for (int j = 0; j < width; j++) {
      int idx = i + j * width;
      float col = 0;
      for (Ball b : balls) {
        float d = dist(i, j, b.x, b.y);
        col += b.r * 100 / d;
      }
      col += mouse.r * 100 / dist(i, j, mouse.x, mouse.y);
      pixels[idx] = color(col);
    }
  }
  updatePixels();
  
  
  for (Ball b : balls) {
      b.update();
      //b.show();
  }
  mouse.move(mouseX, mouseY);
}
