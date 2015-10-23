int num=2500;
Particle []  fly= new Particle[num];
void setup()
{
	size(400,400);
	  for (int i=0; i< num-11; i++)
  {
    fly[i] = new NormalParticle();
  }
  for (int i=490; i< num-1; i++)
  {
    fly[i] = new OddballParticle();
  }
  fly[num-1] = new JumboParticle();
  frameRate(100);
}

void draw()
{
	background(210, 180, 170);
	for(int i=0; i<fly.length; i++){
		fly[i].move();
		fly[i].show();
	}
}
class NormalParticle implements Particle
{
		int pSize, pX, pY;
		int speed;
		double angle;
		color pC;
	NormalParticle(){
		pSize=4;
		pX=(int)(Math.random()*30+185);
		pY=(int)(Math.random()*30+185);
		speed=(int)(Math.random()*20-10);
		angle=(int)(Math.random()*2*Math.PI);
		pC=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	}
	public void show(){
		fill(pC);
		ellipse(pX,pY,pSize,pSize);
	}
	public void move(){
				if(speed==0){
			speed=2;
		}
		if(speed==0){
			speed=2;
		}
		pX+= Math.cos(angle)*speed;
		pY+= Math.sin(angle)*speed;
		if(pX>400 || pX<0 || pY>400 || pY<0){
		angle+=180;
		}
		/*if(moveX==0){
			moveX=2;
		}
		if(moveY==0){
			moveY=2;
		}
		pX+=moveX;
		pY+=moveY;
		if(pX>400 || pX<0 || pY>400 || pY<0){
		moveX=(int)(Math.random()*15-7.5);
		moveY=(int)(Math.random()*15-7.5);
		pC=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		}*/
	}

}
interface Particle{

	public void move();
	public void show();


}
class OddballParticle implements Particle
{
		int pSize;
		double pX;
		double pY;
		int speed;
		double angle;
	OddballParticle(){
		pSize=5;
		pX=200;
		pY=200;
		angle=(Math.random()*2*Math.PI);
		speed=(int)(Math.random()*15-7.5);
	}
	public void show(){
		ellipse((int)pX,(int)pY,pSize*1.5,pSize*1.5);
	}
	public void move(){
		if(speed==0){
			speed=2;
		}
		if(speed==0){
			speed=2;
		}
		pX+= Math.cos(angle)*speed;
		pY+= Math.sin(angle)*speed;
		if(pX>400 || pX<0 || pY>400 || pY<0){
		angle+=180;
		}
	}

}
class JumboParticle extends OddballParticle
{
	JumboParticle(){
		pSize=10;
	
	}
}