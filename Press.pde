int l = 0;

void mostrarPantallaInicio() {
  background(0);
  if (l < 50) l++;
  textSize(l);
  textAlign(CENTER);
  fill(255);
  textSize(100);
  text("PO   NG", 400, 200);
  textSize(25);
  fill(255);
  rect(10, 80, 20, 120);
  rect(770, 350, 20, 120);
  ellipse(140, 190, 50, 50);
  textAlign(CENTER);
  text("Pulsa cualquier tecla para continuar", width / 2, 390);

  dibujarBorde(-10, 0, 10, 600);
  dibujarBorde(-10, 570, 810, 30);
  dibujarZonaCancha(390, 40, 20, 150);
  dibujarZonaCancha(390, 240, 20, 120);
  dibujarZonaCancha(390, 410, 20, 150);

  if (keyPressed) state = 1;
}