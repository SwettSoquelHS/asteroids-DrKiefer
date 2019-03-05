/*
  Asteroid class
 Should extend Mover class and implement show.
 
 Initially, your asteroid may just be a simple circle or square
 but the final program should use "beginShap(), vertex(), and endShape()"
 to render the asteroid.
 */
class Asteroid extends Mover {   
  public int fillColor = 100;
  //protected float x, y;
  // protected float speed;
  //protected float direction;
  //rotate player;
  public float radius = 10;
  public boolean isShip = true;
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
    // print("showing ast");
    fill(#CBC6BD);
    if (isShip) {
      pushMatrix();
      stroke(#CBC6BD);
      translate(x, y);

      //float randSizeX = random(-10 , 10);
      //  ellipse(0,0, radius, radius);
      scale(radius);
      rotate(x / 100);

      beginShape();
      //vertex(1, 9);
      //vertex(4, 5);
      //vertex(7, 3);
      //vertex(3, -3);
      //vertex(0, -6);
      //vertex(-5, -4);
      //vertex(-7, 0);
      //vertex(-5, 5);
      //vertex(1, 9);
      vertex(0, 2);
      vertex(1, 0);
      vertex(1, -2);
      vertex(0, -1);
      vertex(-1, -2);
      vertex(-1, 0);
      vertex(0, 2);
      endShape();
      popMatrix();
    } else {
     
      pushMatrix();
       fill(#F0B55C);
      
      translate(x, y);
      scale(radius);
      rotate(x/100);

      beginShape();
      stroke(#F0B55C);//head
      vertex(0, 7);
      vertex(1, 6);
      vertex(0, 5);
      vertex(-1, 6);
      vertex(0, 7);
      endShape();

      beginShape();//torso
      vertex(0, 5);
      vertex(0, 4);
      vertex(0, 2);
      endShape();

      beginShape(); // rightArm
      vertex(0, 4);
      vertex(2, 3);
      vertex(3, 3);
      endShape();

      beginShape(); //leftArm
      vertex(0, 4);
      vertex(-1, 3);
      vertex(-2, 2);
      endShape();

      beginShape();//leftLeg
      vertex(-1, 1);
      vertex(-1, -1);
      vertex(-2, -2);
      endShape();

      beginShape(); // rightLeg
      vertex(1, 1);
      vertex(2, -1);
      vertex(0, -2);
      endShape();
      popMatrix();
    }
  }
  float getDirection() {
    return direction;
  }
  //public float getDirection() {
  //  return direction;
  //}
  /*
  void CollisionDetection(float x2, float y2) {
   
   if(dist(this.x, this.y, x2, y2) < 20  ) {
   print("col"); 
   }
   
   }
   */
}
