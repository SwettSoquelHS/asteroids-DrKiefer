  /*
  Spaceship class
    Should extend Mover class and implement show.
    You may add additional methods to this class, for example "rotate" and "accelerate" 
    might be useful.
*/
class Spaceship extends Mover{ //extends Mover  
  //float x_pos, y_pos;
float Shipspeed, direction;
float angle;
int shipRadius = 30;
boolean ROTATE_LEFT = false;
boolean ROTATE_RIGHT = false;
boolean MOVE_FORWARD = false;
//float randPosX = random(0, width - 100);
//float randPosY = random(0, height - 100);


  Spaceship(float x, float y, float speed, float direction) {
    super( x,  y,  speed,  direction);
    this.x = x;
    this.y = y;
    this.Shipspeed = speed;
    
    this.direction = direction;
    //x_pos = width/2.0;
   // y_pos = height/2.0;

//  Shipspeed = 1;
  //direction = 45;  

  }

void draw() {
  
 

 // move();
 
 
  
  
  
}
/*
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      ROTATE_LEFT = true;
    } else if (keyCode == RIGHT) {
      ROTATE_RIGHT = true;
    } else if (keyCode == UP) {
      MOVE_FORWARD = true;
    }
  }
}
*/


/*
void keyReleased() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      ROTATE_LEFT = false;
    } else if (keyCode == RIGHT) {
      ROTATE_RIGHT = false;
    } else if (keyCode == UP) {
      MOVE_FORWARD = false;
    }
  }
}
*/
void show(){ 
  
   pushMatrix();
  rotate(500);
  float cx = x;
  float cy = y;
  beginShape();
  fill(100);
 
  ellipse(x, y, shipRadius, shipRadius);
   
  fill(2, 216, 111);
  ellipse(x, y, 10, 10);
  int lightsNum = 6;
  for (int i = 0; i < lightsNum; i++) {
    fill(#FAF200);
    float angle = i * TWO_PI / lightsNum;
    float x = cx + 10.0 * cos(angle);                
    float y = cy + 10.0 * sin(angle);                
    //llipse(x, y, 5, 5);
  }
  endShape();
  popMatrix();
}

void move() {
 
  //Update x,y position
 // translate(this.x, this.y);
  //this.x = this.x + Shipspeed * (float)Math.cos(radians(direction));
  //this.y = this.y + Shipspeed * (float)Math.sin(radians(direction));
  
   x = x + Shipspeed * (float)Math.cos(radians(direction));
  y = y + Shipspeed * (float)Math.sin(radians(direction));
  
}

void setSpeed(float speed) {
  Shipspeed = speed;
 
}
void setDirection(float direction) {
  this.direction = direction;
}

float getSpeed() {
  return Shipspeed;
}
float getDirection() {
  return direction;
}
float getX() {
  return x;
}
float getY() {
  return y;
}
  
}
