void cjugar(){
  background(0);
  fill(255);textSize(50);text("Cómo Jugar",400,100);
  fill(255);textSize(20);text("Controles",400,150);
  fill(255);textSize(35);text("Mando",200,200);
  fill(255);textSize(35);text("Teclado",600,200);
  //controles mando
  fill(255);textSize(20);text("El botón grande izquierdo \n moverá la paleta hacía arriba",200,250);
  fill(255);textSize(20);text("El botón grande derecho \n moverá la paleta hacía abajo",200,320);
  fill(255);textSize(20);text("El botón chico activará \n tu habilidad",200,380);
  //controles teclado
  fill(255);textSize(20);text("La flecha de arriba moverá \n la paleta hacia arriba",600,250);
  fill(255);textSize(20);text("La flecha de abajo moverá \n la paleta hacia abajo",600,320);
  fill(255);textSize(20);text("La flecha derecha activará \n tu habilidad",600,380);
  //info
  fill(255);textSize(20);text("Tu habilidad hace que la pelota vaya hacia el lado contrario,\n esta se llama telequinesis",400,440);
  fill(255);textSize(20);text("Al empezar la partida, toca arriba o abajo \n para que la pelota empiece a moverse",400,500);
  if(keyPressed){    state=1;  }
  
}

