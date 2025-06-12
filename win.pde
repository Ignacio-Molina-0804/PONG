void mostrarGanador(int jugador) {
  background(0);
  textAlign(CENTER);
  if (jugador == 1) {
    fill(#EA0E0E);
    textSize(50);
    text("¡Gana el Jugador 1!", 400, 200);
  } else {
    fill(#0E17EA);
    textSize(50);
    text("¡Gana el Jugador 2!", 400, 200);
  }
  fill(255);
  textSize(40);
  text("Pulsa cualquier tecla para volver al menu", width / 2, 390);

  if (keyPressed) state = 1;
}