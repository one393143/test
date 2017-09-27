//insert background&images
PImage bg,groundhog,life,robot,soil,soldier;

int soldierLayer;
int soldierSpeed,robotLayer,robotSite;
int laserSpeed=0;

void setup() {
	size(640, 480, P2D);

  //load in images
  bg=loadImage("img/bg.jpg");
  life=loadImage("img/life.png");
  soil=loadImage("img/soil.png");
  groundhog=loadImage("img/groundhog.png");
  robot=loadImage("img/robot.png");
  soldier=loadImage("img/soldier.png");
  
  //soldier
  soldierLayer=floor(random(2,6));
  //robot
  robotLayer=floor(random(2,6));
  robotSite=floor(random(160,600));
}

void draw() {
  //background
  image(bg,0,0);
  
  //sun
  stroke(255,255,0);
  strokeWeight(5);
  fill(253,184,19);
  ellipse(590,50,120,120);
  
  //soil
  image(soil,0,160);
  
  //grass
  fill(124,204,25);
  noStroke();
  rect(0,145,640,15);
  
  //life
  image(life,10,10);
  image(life,80,10); 
  image(life,150,10);
  
  //groundhog
  image(groundhog,280,80); 
  
  //soldier
  soldierSpeed+=2;
  soldierSpeed%=760;
  image(soldier,-80+soldierSpeed,soldierLayer*80);
  
  //robot
  image(robot,robotSite,robotLayer*80);
  
  //laser
  laserSpeed+=2;
  laserSpeed%=185;
  strokeWeight(10);
  stroke(255,0,0);
  line(robotSite+25-laserSpeed,robotLayer*80+37,min(robotSite+40+25-laserSpeed,robotSite+25),robotLayer*80+37);
}