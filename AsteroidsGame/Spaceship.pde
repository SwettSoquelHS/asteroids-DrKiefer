  /*
  Spaceship class
    Should extend Mover class and implement show.
    You may add additional methods to this class, for example "rotate" and "accelerate" 
    might be useful.
*/
class Spaceship { //extends Mover  
  float x_pos, y_pos;
float Shipspeed, direction;
float angle;
int shipRadius = 30;
boolean ROTATE_LEFT = false;
boolean ROTATE_RIGHT = false;
boolean MOVE_FORWARD = false;
//float randPosX = random(0, width - 100);
//float randPosY = random(0, height - 100);
Asteroid[] ast = new Asteroid[20];
void setup() {
  size(800, 800);
  x_pos = width/2.0;
  y_pos = height/2.0;

  Shipspeed = 1;
  direction = 45;  
  CreateAsteroid();
}
void draw() {
  background(0);
  for (int i = 0; i < ast.length; i++) {
    ast[i].Show();
    ast[i].Move();
    ast[i].CollisionDetection(x_pos, y_pos);
  }

  MoveShip();
  pushMatrix();
  translate(x_pos, y_pos);
  if (x_pos > width) {
    x_pos = 0;
  }
  if (y_pos > height) {
    y_pos = 0;
  }
  if (x_pos < 0 ) {
    x_pos = width;
  }
  if (y_pos < 0) {
    y_pos = height;
  }

  rotate(radians(direction));
  float cx = 0;
  float cy = 0;
  beginShape();
  fill(100);
  ellipse(0, 0, shipRadius, shipRadius);
  fill(2, 216, 111);
  ellipse(0, 0, 10, 10);
  int lightsNum = 6;
  for (int i = 0; i < lightsNum; i++) {
    fill(#FAF200);
    float angle = i * TWO_PI / lightsNum;
    float x = cx + 10.0 * cos(angle);                
    float y = cy + 10.0 * sin(angle);                
    ellipse(x, y, 5, 5);
  }
  endShape();
  popMatrix();
}
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

void CreateAsteroid() {
  for (int i = 0; i < ast.length; i++) {
    float randX = random(0, width);
    float randY = random(0, height);

    float AsteroidDir =  random(-360, 360);
    ast[i] = new Asteroid(randX, randY, 1, 50, AsteroidDir);
  }
}
void MoveShip() {
  //Update x,y position
  if (ROTATE_LEFT) 
    direction-= 1.0;
  if (ROTATE_RIGHT)
    direction += 1.0;
  if (MOVE_FORWARD == true) {
    if (Shipspeed < 3) {
      Shipspeed += 0.3;
    }
  } else {
    if (Shipspeed > 0) {
      Shipspeed -= 0.05;
    }
    if (Shipspeed < 0) {
      Shipspeed = 0;
    }
  }
  x_pos = x_pos + Shipspeed * (float)Math.cos(radians(direction));
  y_pos = y_pos + Shipspeed * (float)Math.sin(radians(direction));
}
}
}
