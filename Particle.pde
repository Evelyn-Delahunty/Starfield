class Particle{
  float x, y, z, r;

  Particle(){
    x = (float)(wdt * Math.random());
    y = (float)(hgt * Math.random());
    z = (float)(Math.random() * 1000);
    r = 5;
  }
  
  void render(){
    float rho = z - cZ;
    if(rho > 0){
      float theta = atan((x - cX) / rho);
      float phi = atan((y - cY) / rho);
      if(theta <= xFOV && theta >= -xFOV && phi <= yFOV && phi >= -yFOV){
        float fX = wdt * (theta / xFOV) / 2 + wdt / 2;
        float fY = hgt * (phi / yFOV) / 2 + hgt / 2;
        float fRX = wdt * atan(r / rho) / (2 * xFOV);
        float fRY = hgt * atan(r / rho) / (2 * yFOV);
        ellipse(fX, fY, fRX, fRY);
      }
    }
    fill(255, 255, 255);
  }
}
