

class Ball {
  
  float x, y, r, vel_x, vel_y;
  
  public Ball(float x, float y) {
    this.x = x;
    this.y = y;
    this.r = random(20, 60);
    
    this.vel_x = random(5);
    this.vel_y = random(5);
    

  }
  
  public void update() {
    
    if (this.x < 0 || this.x > width) {
      this.vel_x *= -1;
    }
    if (this.y < 0 || this.y > height) {
      this.vel_y *= -1;
    }
    
    this.x += this.vel_x;
    this.y += this.vel_y;
    
  }
  
  public void show() {
    stroke(0);
    circle(this.x, this.y, this.r);
    
  }
  
  public void move(int newx, int newy) {
    this.x = newx;
    this.y = newy;
    
  }
 
  
}
