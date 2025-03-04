class Dot
{
  int n;
  int colour;
  float dotSize;
  float x, y;
  float r, theta;

  Dot(int _n, float _dotSize, float _x, float _y, float _r, float _theta)
  {
    n = _n;
    colour = 0;
    dotSize = _dotSize;
    theta = _theta;
    x = _x;
    y = _y;
    r = _r;
  }

  void draw()
  {
    if(framecount == n) colour = 255;
    
    fill(colour);
    noStroke();
    
    ellipse(x, y, dotSize, dotSize);
  }
  
  void move()
  {
    x = r * cos(theta) + width / 2;
    y = r * sin(theta) + height / 2;
    
    theta += radians(360. - goldenAngle);
  }
}