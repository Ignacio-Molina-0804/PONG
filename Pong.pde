int x = 400, y = 300;
int vx = 6, vy = 6;
int yb1 = 235, yb2 = 235;
int p1 = 0, p2 = 0;
int h1 = 1, h2 = 1;
int ip = 0;

// Banderas para flechas
boolean upPressed = false;
boolean downPressed = false;

void pong() {
  background(0);

  // Bordes y cancha
  dibujarBorde(-10, 0, 10, 600);
  dibujarBorde(-10, 570, 810, 30);
  dibujarZonaCancha(390, 40, 20, 150);
  dibujarZonaCancha(390, 240, 20, 120);
  dibujarZonaCancha(390, 410, 20, 150);

  // Pelota y paletas
  pelota(x, y, 50);
  paletas(10, yb1, 770, yb2, 20, 120);

  // Marcador
  fill(255);
  textAlign(LEFT);
  textSize(50);
  text(p1, 350, 70);
  text(p2, 420, 70);

  if (ip == 1) {
    x -= vx;
    y += vy;
  }

  // Rebotes
  if (y < 55 || y > 545) vy *= -1;
  if (x < 0 || x > 800) vx *= -1;

  // Rebote con paletas
  if (x < 55 && y > yb1 && y < yb1 + 120) vx *= -1;
  if (x > 750 && y > yb2 && y < yb2 + 120) vx *= -1;

  // Puntos y reinicio
  if (x < 10) reiniciarPunto(2);
  if (x > 790) reiniciarPunto(1);

  // Ganador
  if (p1 == 10) state = 5;
  if (p2 == 10) state = 6;

  // Movimiento paletas y habilidades
  moverPaletas();
  limitarPaletas();
}

void reiniciarPunto(int jugador) {
  x = 400;
  y = 300;
  vx *= -1;
  h1 = 1;
  h2 = 1;
  ip = 0;
  if (jugador == 1) p1++;
  else p2++;
}

void moverPaletas() {
  // Jugador 1 (WASD)
  if (keyPressed) {
    if (key == 's' || key == 'S') yb1 += 5;
    if (key == 'w' || key == 'W') yb1 -= 5;
    if ((key == 'f' || key == 'F') && h1 == 1) {
      vx = -6;
      h1 = 2;
    }
  }
  // Jugador 2 (Flechas)
  if (downPressed) yb2 += 5;
  if (upPressed) yb2 -= 5;
}

void keyPressed() {
  // Iniciar movimiento SOLO con Enter
  if (keyCode == ENTER && ip == 0) {
    ip = 1;
  }
  // Flechas
  if (keyCode == UP) upPressed = true;
  if (keyCode == DOWN) downPressed = true;
}

void keyReleased() {
  // Flechas
  if (keyCode == UP) upPressed = false;
  if (keyCode == DOWN) downPressed = false;
}

void limitarPaletas() {
  yb1 = constrain(yb1, 30, 450);
  yb2 = constrain(yb2, 30, 450);
}