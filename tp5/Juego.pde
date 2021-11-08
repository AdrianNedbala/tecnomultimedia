class Juego {
  Mapa mapa;
  Harry harry;
  Enemigo [] enemigo1;
  Pelea pelea;

  int cantidadEnemigos = 15, tamEnemigos =5, distEnemigos=75;
  int enemyHP = 250, playerHP = 250;

  Juego() {
    this.mapa = new Mapa();
    this.harry = new Harry();
    this.enemigo1 = new Enemigo[this.cantidadEnemigos];
    this.pelea = new Pelea();

    for (int i=0; i<this.cantidadEnemigos; i++) {
      int posXenemy = round(random(-320, 660));
      int posYenemy = round(random(-220, 525));
      this.enemigo1[i] = new Enemigo(posXenemy, posYenemy, tamEnemigos);
    }
  }

  void dibujar() {
    if (this.pelea.inicio_pelea==false) {
      this.mapa.dibujar();
      this.harry.dibujar();
      this.harry.dibujar();
      this.mapa.dibujar(1);
      for (int i=0; i<this.cantidadEnemigos; i++) {
        this.enemigo1[i].dibujar();
        // line(harry.posXplayer, harry.posYplayer, enemigo1[i].posX, enemigo1[i].posY);
        if (dist(harry.posXplayer, harry.posYplayer, enemigo1[i].posX, enemigo1[i].posY) < distEnemigos) {
          perseguirJugador();
        }
        if (this.colisionBox_pelea()==true) {
          this.enemigo1[i].desaparecer();
          this.pelea.iniciarPelea();
        }
        this.enemigo1[i].movimiento();
      }
    }
    this.pelea.dibujar(enemyHP, playerHP);
    //  println("peleaON");
  }


  void teclaPresionada() {
    this.mapa.moverMapa0();
    this.harry.moverUP();
    this.harry.moverDOWN();
    this.harry.moverLEFT();
    this.harry.moverRIGHT();
    if (this.pelea.inicio_pelea==true) {
      this.pelea.enProceso();
    }
  }


  void perseguirJugador() {
    for (int i=0; i<this.cantidadEnemigos; i++) {
      if (enemigo1[i].posY < harry.posYplayer) {
        enemigo1[i].posY++;
      } else {
        enemigo1[i].posY--;
      }
      if (enemigo1[i].posX < harry.posXplayer) {
        enemigo1[i].posX++;
      } else {
        enemigo1[i].posX--;
      }
    }
  }


  boolean colisionBox_pelea() {
    for (int i=0; i<this.cantidadEnemigos; i++) {
      if (dist(harry.posXplayer, harry.posYplayer, enemigo1[i].posX, enemigo1[i].posY) < 10) {
        return true;
      }
    }
    return false;
  }
}
