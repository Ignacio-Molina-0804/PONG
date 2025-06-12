import processing.serial.*;
Serial myPort;    
int state=0;
int d;
void setup(){
 size(800, 600);d=second();
 myPort= new Serial(this,"COM7",9600); 
}

void draw(){
 switch(state){
    case 0:{press();}break;
    case 1:{menu();puntos();}break;
    case 2:{pong();}break;
    case 3:{cjugar();}break;
    case 4:{exit();}break;
    case 5:{win1();}break;
    case 6:{win2();}break;
}
}
    
