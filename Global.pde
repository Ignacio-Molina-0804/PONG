int state = 0;
int d;

void setup() {
  size(800, 600);
  d = second();
}

void draw() {
  switch (state) {
    case 0:
      mostrarPantallaInicio();
      break;
    case 1:
      mostrarMenu();
      reiniciarPuntos();
      break;
    case 2:
      pong();
      break;
    case 3:
      mostrarComoJugar();
      break;
    case 4:
      exit();
      break;
    case 5:
      mostrarGanador(1);
      break;
    case 6:
      mostrarGanador(2);
      break;
  }
}