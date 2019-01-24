/* * * * * * * * * * * * * * * * * * * * * * *
 Class variable declarations here
 */
//Spaceship player1;
Asteroid[] ast = new Asteroid[20];
Spaceship player = new Spaceship(0, 0, 2, 90);
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
  
  //initialize your asteroid array and fill it

  //initialize ship

  //initialize starfield
}


/* * * * * * * * * * * * * * * * * * * * * * *
 Drawing work here
 */
public void draw() {
  //your code here
  background(0);
  player.show();
  player.move();
  for (int i = 0; i < ast.length; i++) {
    ast[i].show();
   // ast[i].move();
   ast[i].update();
    //ast[i].CollisionDetection(x, y);
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
  for (int i = 0; i < ast.length; i++) {
    float randX = random(0, width);
    float randY = random(0, height);

    float AsteroidDir =  random(-360, 360);
    ast[i] = new Asteroid(randX, randY, 1, AsteroidDir);
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
  if (keyCode == 32) {  
    SPACE_BAR = true;
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
  }
}
