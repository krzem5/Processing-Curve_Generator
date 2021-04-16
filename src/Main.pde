int A=60,B=40;
void setup() {
  size(600, 600);
  strokeCap(ROUND);
  strokeJoin(ROUND);
}
void draw() {
  background(10);
  float x, y;
  fill(#FF29D8);
  stroke(245);
  strokeWeight(5);
  beginShape();
  for (float ANGLE=0; ANGLE<TWO_PI; ANGLE+=0.1) {


    //HEART
    x=A*16*pow(sin(ANGLE), 3);
    y=A*-13*cos(ANGLE)+A*5*cos(2*ANGLE)+A*2*cos(3*ANGLE)+A*cos(4*ANGLE);


    //FISH
    x=A*cos(ANGLE)-A*pow(sin(ANGLE), 2)/(float)Math.sqrt(2);
    y=A*cos(ANGLE)*sin(ANGLE);


    //ASTROID
    x=A*pow(cos(ANGLE), 3);
    y=A*pow(sin(ANGLE), 3);


    //CARDIOID
    x=2*A*cos(ANGLE)+2*A*cos(ANGLE)*cos(ANGLE);
    y=2*A*sin(ANGLE)+2*A*cos(ANGLE)*sin(ANGLE);


    //HYPERBOLA
    x=A*sec(ANGLE);
    y=B*tan(ANGLE);


    //



      vertex(width/2+x, height/2+y);
  }
  endShape(CLOSE);
}
float sec(float a) {
  return 1/cos(a);
}
