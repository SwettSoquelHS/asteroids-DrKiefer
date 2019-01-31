/*
  Asteroid class
 Should extend Mover class and implement show.
 
 Initially, your asteroid may just be a simple circle or square
 but the final program should use "beginShap(), vertex(), and endShape()"
 to render the asteroid.
 */
class Asteroid extends Mover {   
  //protected float x, y;
  // protected float speed;
  // protected float direction;
  //rotate player;
  protected float radius = 50;
  public Asteroid(float x, float y, float speed, float direction) {
    super(x, y, speed, direction);
    this.x = x;
    this.y = y;
    this.speed = speed;
    //this.radius = radius;
    this.direction = direction;
  }


  void move() {

    // x = x + speed*(float)Math.cos(radians(direction));
    // y = y + speed*(float)Math.sin(radians(direction));
    update();
  }
  void show() {
    fill(100);

    pushMatrix();
    translate(x, y);

    //float randSizeX = random(-10 , 10);
    //  ellipse(0,0, radius, radius);
    scale(4);
    beginShape();
    vertex(1,9);
    vertex(4,5);
    vertex(7,3);
    vertex(3,-3);
    vertex(0, -6);
    vertex(-5, -4);
    vertex(-7, 0);
    vertex(-5,5);
    vertex(1,9);
    endShape();
    popMatrix();
  }
  /*
  void CollisionDetection(float x2, float y2) {
   
   if(dist(this.x, this.y, x2, y2) < 20  ) {
   print("col"); 
   }
   
   }
   */
}
