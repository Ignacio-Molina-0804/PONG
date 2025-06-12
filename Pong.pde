int x=400;
int y=300;
int vx=6;
int vy=6;
int yb1=235;
int yb2=235;
int p1= 0;
int p2= 0;
int h1=1;
int h2=1;
int ip=0;
void pong(){
  
  background(0);

bordes(-10,0,-10,570,810,30);
cancha(390,40,20,150);cancha(390,240,20,120);cancha(390,410,20,150);
pelota(x,y,50);
paletas(10,yb1,770,yb2,20,120);
//contador
fill(255);textAlign(LEFT);textSize(50);text(p1,350,70);
fill(255);textAlign(LEFT);textSize(50);text(p2,420,70);
//rebotes de la pelota en el escenario
if(keyPressed){
if(key=='s' || key == 'S' || key == 'w' || key == 'W' || keyCode==DOWN || keyCode==UP){
ip=1;
}
}
if(ip==1){
x=x-vx;
y=y+vy;
}
if(y<55 || y>545){
vy=vy*-1;
}
if(x<0 || x>800){
vx=vx*-1;
}
//rebotes de la pelota con las paletas
if(x<55 && y>yb1 && y<yb1+120){
  vx=vx*-1;  
}

if(x>750 && y>yb2 && y<yb2+120){
  vx=vx*-1;
}

//suma de puntos+reinicio de la pelota
if(x<10){
  x=400;
  y=300;
  vx=vx*-1;
  p2=p2+1;
  h1=1;
  h2=1;
  ip=0;
}
if(x>790){
  x=400;
  y=300;
  p1=p1+1;
  vx=vx*-1;
  h1=1;
  h2=1;
  ip=0;
}
//gana jugador 1
if(p1==10){
  state=5;
  }
//gana jugador 2
if(p2==10){
  state=6;
}

if(keyPressed){
 if(key=='s' || key == 'S'){
yb1=yb1+5;
 } 
 if(key=='w' || key == 'W'){
   yb1=yb1-5;
 } 
  if(key=='f' || key == 'F' ){
    if(h1==1){
vx=-6;
h1=2;
    }
 }
} 
 if(keyCode==DOWN){
  yb2=yb2+5;
 } 
 if(keyCode==UP){
  yb2=yb2-5;
 } 
  if(keyCode==RIGHT && h2==1){
  vx=+6;
  h2=2;
 } 
 
 if(yb1<30){yb1=30;}
 if(yb1>450){yb1=450;}
 if(yb2<30){yb2=30;}
 if(yb2>450){yb2=450;}
}


  
