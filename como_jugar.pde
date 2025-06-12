void mostrarComoJugar() {
  background(0);
  fill(255);

  // Título principal
  textAlign(CENTER);
  textSize(50);
  text("Cómo Jugar", 400, 90);

  // Subtítulo
  textSize(22);
  text("Controles", 400, 140);

  // Títulos de columnas
  textSize(32);
  textAlign(LEFT);
  text("Mando", 40, 200);      // Más a la izquierda
  textAlign(RIGHT);
  text("Teclado", 760, 200);   // Más a la derecha

  // Texto columna Mando
  textSize(16);
  textAlign(LEFT);
  text("El botón grande izquierdo moverá la paleta hacia arriba", 40, 250);
  text("El botón grande derecho moverá la paleta hacia abajo", 40, 280);
  text("El botón chico activará tu habilidad", 40, 310);

  // Texto columna Teclado
  textAlign(RIGHT);
  text("La flecha de arriba moverá la paleta hacia arriba", 760, 250);
  text("La flecha de abajo moverá la paleta hacia abajo", 760, 280);
  text("La flecha derecha activará tu habilidad", 760, 310);

  // Explicación habilidad y cómo empezar
  textAlign(CENTER);
  textSize(15);
  text("Tu habilidad hace que la pelota vaya hacia el lado contrario, esta se llama telequinesis.", 400, 370);
  text("Al empezar la partida, toca arriba o abajo para que la pelota empiece a moverse.", 400, 400);

  if (keyPressed) state = 1;
}