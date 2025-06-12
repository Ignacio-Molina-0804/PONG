void serialEvent(Serial p)  {
  while (myPort.available() == 1) {
    char Letra = myPort.readChar();
    print(Letra);
    if (Letra == 'W') {
  yb1=yb1-5;
    }if (Letra == 'S') {
     
     yb1=yb1+5;
    }
    if (Letra == 'F'){
          if(h1==1){
vx=-6;
h1=2;
    }
  }
  }
}
