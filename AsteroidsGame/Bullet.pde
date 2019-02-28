class Bullet extends Mover {
  float x;
  float y;
  float speed;
  float direction;
  float radius;
  protected int numofBullets;
  Bullet(float x, float y, float speed, float direction) {
    
    super(x, y, speed, direction);
    
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.direction = direction;
  }
  void show() {
    fill(255);
    ellipse(x, y, 5, 5);
    //print("showed");
  }

  void move() {
 
    x = x + speed * (float)Math.cos(radians(direction));
    y = y + speed * (float)Math.sin(radians(direction));
    // print("moved");
  }

  //void iEnumerator(int waitTime) {
  //  for(int i = 0; i < numofBullets; i++) {
  //    float angle = (float)(i * Math.PI * 2 / numofBullets);
  //    float cosX = (float)Math.cos(angle);
  //    float sinY = (float)Math.sin(angle);
  //    fill(#0AC9B7);
  //    ellipse(cosX, sinY, 10, 10);      
  //}
  //}
}
