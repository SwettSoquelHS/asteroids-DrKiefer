/* * * * * * * * * * * * * * * * * * * * * * *
 Class variable declarations here
 */
//Spaceship player1;
ArrayList<Asteroid> ast = new ArrayList<Asteroid>(10);
Spaceship player = new Spaceship(0, 0, 0, 0);
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
Boolean fireTrue = false;
//Asteroid[] asteroids;
//Star[] starField;


/*
  Track User keyboard input
 */
boolean ROTATE_LEFT;  //User is pressing <-
boolean ROTATE_RIGHT; //User is pressing ->
boolean MOVE_FORWARD; //User is pressing ^ arrow
boolean SPACE_BAR;    //User is pressing space bar


/* * * * * * * * * * * * * * * * * * * * * * *
 Initialize all of your variables and game state here
 */
public void setup() {
  size(800, 800);
  createAsteroid();
  player.x = width/2;
  player.y = height/2;
  // frameRate(2);
  //initialize your asteroid array and fill it

  //initialize ship

  //initialize starfield
}


/* * * * * * * * * * * * * * * * * * * * * * *
 Drawing work here
 */
public void draw() {
  fill(25, 40, 88);

  //your code here
  background(0);
  player.show();
  player.move();
  player.update();
  //player.update();
  fill(#F58B00);

  ellipse(player.x, player.y, 30, 30); 
  for (Asteroid a : ast) {
    a.show();

    // ast[i].move();
    a.update();
    if (dist(player.x, player.y, a.x, a.y) < 50) {
      // print("player hit");
      //noLoop();
    }
  }

  //  if(player
  //print("detected");

  //ast[i].CollisionDetection(x, y);
  for (Bullet b : bullets) {

    // bullets.add(b);
    b.show();
    b.move();
  }
  for (Asteroid a : ast) {

    for (Asteroid b : ast) {
      if (dist(a.x, a.y, b.x, b.y) < 50 && b != a) {
        //ast[i].direction = ast[i].direction * -1;
        //ast[j].direction = ast[j].direction * -1;
        a.direction = random(-360, -270);
        a.x += 1;
        a.y += 1;
        b.direction = random(-360, -270);

        // print("col");
      }
    }
  }      
  //fix
  for (Bullet a : bullets) {
    for (Asteroid b : ast) {
      if (dist(a.x, a.y, b.x, b.y) < 50) {
        for (int i = 0; i < 3; i++) {
          float AsteroidDir =  random(-360, 360);
          Asteroid c = new Asteroid(b.x, b.y, 1, AsteroidDir);
          ast.add(c);
        }
        //for (int j = 0; j < 3; j++) {
        //  float AsteroidDir =  random(-360, 360);
        //  Asteroid b = new Asteroid(ast[i].x, ast[i].y, 1, AsteroidDir);
        //  //b.radius = 10;
        //b.fillColor = 255;
      }
    }
  }
  if (ROTATE_LEFT) 

    player.setDirection(player.getDirection() - 1.0);
  //ellipse(player.direction, player.direction, 5, 5);
  //player.setDirection(1);

  if (ROTATE_RIGHT)
    //player.setDirection(1);
    player.setDirection(player.getDirection() + 1.0);
  //ellipse(player.direction, player.direction, 5, 5);
  if (MOVE_FORWARD == true) {
    if (player.getSpeed() < 3) {
      player.setSpeed(player.getSpeed() + 0.3);
    }
  } else {
    if (player.getSpeed() > 0) {
      player.setSpeed(player.getSpeed() - 0.3);
      //ellipse(player.x, player.y, 20, 20);
    }
    if (player.getSpeed() < 0) {
      player.setSpeed(0);
    }
  }
  if (SPACE_BAR) {
    // print("space bar pressed");

    if (fireTrue == true) {
      Bullet a = new Bullet(player.getX(), player.getY(), 5, player.getDirection());
      bullets.add(a);
    }
    fireTrue = false;
  }

  //Draw Starfield first 
  //TODO: Part I

  //Check bullet collisions
  //TODO: Part III or IV - for not just leave this comment

  //TODO: Part II, Update each of the Asteroids internals

  //Check for asteroid collisions against other asteroids and alter course
  //TODO: Part III, for now keep this comment in place

  //Draw asteroids
  //TODO: Part II

  //Update spaceship
  //TODO: Part I

  //Check for ship collision agaist asteroids
  //TODO: Part II or III

  //Draw spaceship & and its bullets
  //TODO: Part I, for now just render ship
  //TODO: Part IV - we will use a new feature in Java called an ArrayList, 
  //so for now we'll just leave this comment and come back to it in a bit. 

  //Update score
  //TODO: Keep track of a score and output the score at the top right
}


void createAsteroid() {
  for (int i = 0; i < 10; i++) {
    float randX = random(0, 800);
    float randY = random(0, 800);

    float AsteroidDir =  random(-360, 360);
  
    Asteroid a = new Asteroid(randX, randY, 1, AsteroidDir);
    ast.add(a);
  }
}


/* * * * * * * * * * * * * * * * * * * * * * *
 Record relevent key presses for our game
 */
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      ROTATE_LEFT = true;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = true;
    } else if (keyCode == UP) {
      MOVE_FORWARD = true;
    }
  }

  //32 is spacebar
  if (keyCode == 32 && SPACE_BAR == false) {  
    SPACE_BAR = true;
    fireTrue = true;
  }
}



/* * * * * * * * * * * * * * * * * * * * * * *
 Record relevant key releases for our game.
 */
void keyReleased() {  
  if (key == CODED) { 
    if (keyCode == LEFT) {
      ROTATE_LEFT = false;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = false;
    } else if (keyCode == UP) {
      MOVE_FORWARD = false;
    }
  }
  if (keyCode == 32) {
    SPACE_BAR = false;
    //if(
  }
}
