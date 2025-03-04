final int frameRate = 40;
final int numDots = 1000;
final float goldenAngle = 137.508; 

int framecount;
float dotSize;
int growth;
float r,theta;
float x, y;

Dot[] dot;

void setup()
{
  size(1000, 1000);
  frameRate(frameRate);
  
  framecount = 0;
  dotSize = 1;
  growth = 10;

  dot = new Dot[numDots];

  for (int i = 0; i < numDots; i++)
  {
    dotSize += i * 0.00001;
    theta =  i * radians(goldenAngle);
    r = growth * sqrt(i);
    x = r * cos(theta) + width / 2;
    y = r * sin(theta) + height / 2;
    dot[i] = new Dot(i, dotSize, x, y, r, theta);
  }
}

void draw()
{
  background(0);

  for (int i = 0; i < numDots; i++)
  {
    dot[i].draw();
    dot[i].move();
  }
  
  framecount++;
}