/*

hola profe, no llegue a terminar el trabajo. lo entrego igual para saber si voy bien.

*/
Juego juego;

void setup() {
  size(800, 600);
  juego = new Juego();
}

void draw() {
  background(0);
  juego.dibujar();
}

void keyPressed() {
  juego.teclaPresionada();
}

void keyReleased() {
}
