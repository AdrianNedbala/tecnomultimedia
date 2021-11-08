class Mapa {
  PImage [] mapas = new PImage [2];
  int numeroDeMapa = 0;
  int posX=170, posY=240, moverMapa=5;


  Mapa() { 
    for (int i=0; i<mapas.length; i++) {
      mapas[i] = loadImage("./mapas/" + i + ".png");
    }
  }

  void dibujar() {
    imageMode(CENTER);
    translate(this.posX, this.posY);
    image(this.mapas[numeroDeMapa], posX, posY);
   // println("posX",posX,"posY",posY);
  }
  void dibujar(int _uno) {
    imageMode(CENTER);
    translate(this.posX-this.posX, this.posY-this.posY);
    image(this.mapas[numeroDeMapa+_uno], posX, posY);
  }


  void moverMapa0() {
    if (keyCode == UP) {
      posY += moverMapa;
      if (posY>240) {
        posY=240;
      }
    }
    if (keyCode == DOWN) {
      posY -= moverMapa;
      if (posY<60) {
        posY=60;
      }
    }
    if (keyCode == LEFT) {
      posX += moverMapa;
      if (posX>320) {
        posX=320;
      }
    }
    if (keyCode == RIGHT) {
      posX -= moverMapa;
      if (posX<160) {
        posX=160;
      }
    }
  }
}
