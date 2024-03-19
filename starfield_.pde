int wdt = 960;
int hgt = 540;
float xFOV = 2 * PI / 9;
float yFOV = PI / 8;
float cX, cY, cZ, cXV, cYV, cZV;
ArrayList<Particle> particles = new ArrayList<Particle>();
ArrayList<Oddball> oddballs = new ArrayList<Oddball>();

void setup(){
  windowResize(wdt, hgt);
  frameRate(60);
  background(0);
  noStroke();
  fill(155);
  ellipseMode(RADIUS);
  cX = wdt / 2;
  cY = hgt / 2;
  cZ = 0;
  cXV = 0;
  cYV = 0;
  cZV = 0;
  for(int i = 0; i < 100; i++){
    Particle nP = new Particle();
    particles.add(nP);
  }
  for(int i = 0; i < 5; i++){
    Oddball nO = new Oddball();
    oddballs.add(nO);
  }
}

void draw(){
  background(0);
  if(keyPressed){
    switch(key){
      case 'w':
        cZV += 0.1;
        break;
      
      case 's':
        cZV -= 0.1;
        break;
      
      case 'a':
        cXV -= 0.1;
        break;
      
      case 'd':
        cXV += 0.1;
        break;
      
      case 'q':
        cYV += 0.1;
        break;
       
      case 'e':
        cYV -= 0.1;
        break;
    }
  }
  moveCamera();
  for(Particle temp : particles){
    temp.render();
  }
  for(Oddball temp : oddballs){
    temp.move();
    temp.cRender();
  }
}

void moveCamera(){
  cX += cXV;
  cY += cYV;
  cZ += cZV;
}
