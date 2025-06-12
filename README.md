# 🏓 Pong en Processing

¡Bienvenido a tu propio clon del clásico **Pong** hecho en [Processing](https://processing.org/)!  
Juega partidas rápidas y compite con tus amigos en la misma computadora.  
No necesitas Arduino ni hardware externo.

---

## 🎮 ¿Cómo jugar?

| Jugador | Tecla Arriba | Tecla Abajo | Habilidad Especial |
|---------|:------------:|:-----------:|:-----------------:|
| **1**   | W            | S           | F                 |
| **2**   | ⬆️ Flecha arriba | ⬇️ Flecha abajo | (No disponible)   |

- **Habilidad especial (Jugador 1):**  
  Usa la tecla **F** para activar la telequinesis y cambiar la dirección de la pelota una vez por punto.

- **Inicio de cada punto:**  
  Después de cada punto, la pelota se detiene en el centro.  
  👉 **Presiona ENTER** para que la pelota vuelva a moverse.

---

## 🖥️ Pantallas del juego

- **Pantalla de inicio:**  
  _Pulsa cualquier tecla para continuar._

- **Menú principal:**  
  - ▶️ Jugar
  - ℹ️ Cómo jugar
  - ❌ Salir

- **Pantalla "Cómo jugar":**  
  Explica los controles y la habilidad especial.

- **Pantalla de victoria:**  
  Muestra quién ganó la partida.

---

## 📂 Estructura del proyecto

```
Pong/
├── Global.pde         # Configuración general y control de pantallas
├── menu.pde           # Menú principal y botones
├── Pong.pde           # Lógica del juego, movimiento y puntuación
├── paletas.pde        # Dibujo de las paletas
├── pelota.pde         # Dibujo de la pelota
├── cancha.pde         # Dibujo de la cancha y bordes
├── como_jugar.pde     # Pantalla de instrucciones
├── win.pde            # Pantalla de victoria
├── Press.pde          # Pantalla de inicio
```

---

## 🚀 ¿Cómo ejecutar?

1. Descarga [Processing](https://processing.org/download).
2. Abre la carpeta del proyecto en Processing.
3. Ejecuta el archivo principal (`Global.pde`).
4. ¡Listo para jugar!

---

## 🏆 Créditos

- 👨‍💻 Programación: Ignacio Molina
- 🎮 Inspirado en el clásico Pong de Atari.

---

¡Disfruta el juego y reta a tus amigos!  
Si tienes ideas para mejorarlo, ¡hazlas realidad! 🚀
