class Bullet extends Mover {
  float x;
  float y;
  float speed;
  float direction;
  float radius;
  protected int numofBullets;
  Bullet(float x, float y, float speed, float direction) {
    super(x,y, speed, direction);
  }
  void show() {
    iEnumerator(5);
  }
  
  void move() {
    
    
  }
  
  void iEnumerator(int waitTime) {
    for(int i = 0; i < numofBullets; i++) {
      float angle = (float)(i * Math.PI * 2 / numofBullets);
      float cosX = (float)Math.cos(angle);
      float sinY = (float)Math.sin(angle);
      fill(#0AC9B7);
      ellipse(cosX, sinY, 10, 10);
  }
  }
  
}
