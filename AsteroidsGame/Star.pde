//note that this class does NOT *NEED* to extend Mover but can if you like
float rotIn = 0.1;
class Star {
  //your code here

  void show() {
    pushMatrix();
    drawPlanets(width/2, 280, 10);
    popMatrix();
    rotIn += 0.0001; 
  }


 
    void drawPlanets(int x, int radius, int level) {    
      float p1 = 100;
      float p2 = 720;
      float p3 = 173;

      float c1 = p1 * level/4.0;
      float c2 = p2 / level%5.0;

      fill(c1, p3, c2);

      rotate(radians(level + rotIn));
      ellipse(x, height/2, radius*2, radius*2);      
      if (level > 1) {
        level--;
        drawPlanets(x - radius/2, radius/3, level);
        drawPlanets(x + radius/2, radius/2, level);
      
    }
  }
}
