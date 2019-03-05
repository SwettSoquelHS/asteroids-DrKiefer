//note that this class does NOT *NEED* to extend Mover but can if you like
class Star extends Mover {
  //your code here
  float x;
  float y;
  float speed;
  float direction;
  boolean shipType;

  int savedTime;
  int totalTime = 1000;
  Star(float x, float y, float speed, float direction) {
    super(x, y, speed, direction); 
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.direction = direction;
    savedTime = millis();
  }
  void show() {
     int passedTime = millis() - savedTime;
     hyperDrive();
  }



  void MoveStar() {
  }

  void UFO() {
  }

  void ships() {
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

  float getX() {
    return x;
  }

  float getY() {
    return y;
  }

  float getSpeed() {
    return speed;
  }

  float getDirection() {
    return direction;
  }
  void hyperDrive() {
  createHyperdrive(10, 5);


    if (shipType) {
      UFO();
    } else {
      ships();
    }
  }

  void createHyperdrive(int particleSize, int radius) {
     int passedTime = millis() - savedTime;
    if (passedTime > totalTime) {
    float partDir = random(0, 360);
    for (int i = 0; i < particleSize; i++) {
      //fill(

      x = x + speed * (float)Math.cos(radians(partDir));
      y = y + speed * (float)Math.sin(radians(partDir));
      fill(255);
      ellipse(x, y, radius, radius);
    }
    savedTime = millis(); 
  }
}
}
