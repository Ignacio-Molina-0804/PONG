void puntos(){
p1=0;
p2=0;
yb1=235;
yb2=235;
}
void menu(){
 background(0); 
 fill(255);textSize(50);text("PONG",400,100);
 if(boton(255,"Jugar",320+150/2,180+100/2,320,180,150,100)){
   state=2;   
 } 
 if(boton(255,"Cómo Jugar",320+150/2,330+100/2,320,330,150,100)){
 state=3;
 } 
 if(boton(255,"Salir",320+150/2,480+100/2,320,480,150,100)){
 state=4;
 }   
}

boolean boton(color c, String t, int xt, int yt, int X, int Y, int xl, int yl){
 boolean out=false;
  fill(c); rect(X,Y,xl,yl); 
 fill(0); textSize(20);
 if(mouseX<X+xl/2 && mouseX >X-xl/2){
   if(mouseY<Y+yl/2 && mouseY > Y-yl/2){
      textSize(25);   
      if(mousePressed){
      out=true;
      }
   }
 } 
  textAlign(CENTER);text(t,xt,yt);  return out;
}
