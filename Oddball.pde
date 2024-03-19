class Oddball extends Particle{
  float xV, yV, zV;
  int r, g, b;
  
  Oddball(){
    xV = 0;
    yV = 0;
    zV = 0;
    r = (int)(Math.random() * 255);
    g = (int)(Math.random() * 255);
    b = (int)(Math.random() * 255);
  }
  
  void move(){
    xV -= (x - cX) / 500;
    yV -= (y - cY) / 500;
    zV -= (z - (cZ + 50)) / 500;
    x += xV + (Math.random() - 0.5) * 3;
    y += yV + (Math.random() - 0.5) * 3;
    z += zV + (Math.random() - 0.5) * 3;
    xV *= 0.9;
    yV *= 0.9;
    zV *= 0.9;
  }
  
  void cRender(){
    fill(r, g, b);
    render();
  }
}
