final int MODE_HEART=0;
final int MODE_FISH=1;
final int MODE_ASTROID=2;
final int MODE_CARDIOID=3;
final int MODE_HYPERBOLA=4;
final int WIDTH=60;
final int HEIGHT=40;



int m=MODE_FISH;



void setup(){
	size(600,600);
	strokeCap(ROUND);
	strokeJoin(ROUND);
}



void draw(){
	background(10);
	float x;
	float y;
	fill(#ff29d8);
	stroke(245);
	strokeWeight(5);
	beginShape();
	for (float a=0;a<TWO_PI;a+=0.1){
		if (m==MODE_HEART){
			x=WIDTH*pow(sin(a),3);
			y=WIDTH*-13*cos(a)/16.0f+WIDTH*5*cos(2*a)/16.0f+WIDTH*cos(3*a)/8.0f+WIDTH*cos(4*a)/16.0f;
		}
		else if (m==MODE_FISH){
			x=WIDTH*cos(a)-WIDTH*pow(sin(a),2)/(float)Math.sqrt(2);
			y=WIDTH*cos(a)*sin(a);
		}
		else if (m==MODE_ASTROID){
			x=WIDTH*pow(cos(a),3);
			y=WIDTH*pow(sin(a),3);
		}
		else if (m==MODE_CARDIOID){
			x=2*WIDTH*cos(a)+2*WIDTH*cos(a)*cos(a);
			y=2*WIDTH*sin(a)+2*WIDTH*cos(a)*sin(a);
		}
		else{
			x=WIDTH*sec(a);
			y=HEIGHT*tan(a);
		}
		vertex(width/2+x,height/2+y);
	}
	endShape(CLOSE);
}



float sec(float a){
	return 1/cos(a);
}
