public void setup()
{
  size(800, 800);
}
public void draw()
{
  background(0);
  for(int x = -100; x <= 700; x += 100) {
   for(int y = -100; y <= 700; y += 100) {
    sierpinski(x, y, 200);
   }
  }
  for(int x = -200; x <= 600; x += 100) {
   for(int y = -200; y <= 600; y += 100) {
    sierpinski(x, y, 200);
  }
 }
}

public void sierpinski(int x, int y, int len) 
{
  if(len <= 20) {
    triangle(x, y, x + len/2, y + len, x + len, y);
  }
  else {
    fill(x + 10, y + 5, 255);
    sierpinski(x + len/4, y + len/2, len/2);
    sierpinski(x + len/2, y, len/2);
     sierpinski(x, y, len/2);
  }
}
