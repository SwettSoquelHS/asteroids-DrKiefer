/*
  Asteroid class
    Should extend Mover class and implement show.
    
    Initially, your asteroid may just be a simple circle or square
    but the final program should use "beginShap(), vertex(), and endShape()"
    to render the asteroid.
*/
class Asteroid {   
  protected float Xpos, Ypos;
  protected float Speed;
  protected float dir;
  //rotate player;
  protected float radius;
  public Asteroid(float Xpos, float Ypos, float Speed, float radius, float dir) {
    this.Xpos = Xpos;
    this.Ypos = Ypos;
    this.Speed = Speed;
    this.radius = radius;
    this.dir = dir;
  }


  void Move() {
    Xpos = Xpos + Speed * (float)Math.cos(radians(dir));
    Ypos = Ypos + Speed * (float)Math.sin(radians(dir));
    if (Xpos > width) {
      Xpos = 0;
    }
    if (Ypos > height) {
      Ypos = 0;
    }
    if (Xpos < 0 ) {
      Xpos = width;
    }
    if (Ypos < 0) {
      Ypos = height;
    }
  }

  void Show() {
    fill(255);

    pushMatrix();
    translate(Xpos, Ypos);
    //float randSizeX = random(-10 , 10);
    ellipse(Xpos, Ypos, radius, radius);
    //vertex(
    popMatrix();

  }

  void CollisionDetection(float x2, float y2) {
    
    if(dist(this.Xpos, this.Ypos, x2, y2) < 20  ) {
     print("col"); 
    }
    
  }
}
