void reiniciarPuntos() {
  p1 = 0;
  p2 = 0;
  yb1 = 235;
  yb2 = 235;
}

void mostrarMenu() {
  background(0);
  fill(255);
  textSize(50);
  text("PONG", 400, 100);

  if (boton(255, "Jugar", 395, 230, 320, 180, 150, 100)) state = 2;
  if (boton(255, "Cómo Jugar", 395, 380, 320, 330, 150, 100)) state = 3;
  if (boton(255, "Salir", 395, 530, 320, 480, 150, 100)) state = 4;
}

boolean boton(color c, String t, int xt, int yt, int X, int Y, int xl, int yl) {
  boolean out = false;
  fill(c);
  rect(X, Y, xl, yl);
  fill(0);
  textSize(20);
  if (mouseX > X && mouseX < X + xl && mouseY > Y && mouseY < Y + yl) {
    textSize(25);
    if (mousePressed) out = true;
  }
  textAlign(CENTER);
  text(t, xt, yt);
  return out;
}