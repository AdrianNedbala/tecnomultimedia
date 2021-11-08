class Enemigo {  
  int posX, posY, tamEnemigo, direccion;
  int cantidadEnemigos;
  int timer, sec;
  boolean apareceEnPantalla;
  Mapa mapa;

  Enemigo() {

    tamEnemigo=10;
    this.posX = round(random(-10, 800+10));
    this.posY = round(random(-10, 800+10));
    this.direccion=1;
    this.apareceEnPantalla=true;
  }
  Enemigo(float _XenemyEllipse, float _YenemyEllipse, float _enemyEllipseRadio) {

    tamEnemigo= int (_enemyEllipseRadio);
    this.posX = int(_XenemyEllipse);
    this.posY = int(_YenemyEllipse);
    this.direccion=1;
    this.apareceEnPantalla=true;
  }


  void dibujar() {
    if (this.apareceEnPantalla) {
      ellipseMode(RADIUS);
      fill(0);
      ellipse(this.posX, this.posY, tamEnemigo, tamEnemigo);
     // println("x", this.Xpantalla, "y", this.Ypantalla);
    }
  }
  void movimiento() {
    if (timer<=round(random(5, 20))) {
      timer=timer+1;
    } else {
      sec=sec+1;
      timer=0;
    }
    if (timer==0) {
      direccion=round(random(1, 4));
    }
    if (direccion==1) {
      posY--;
    }
    if (direccion==2) {
      posY++;
    }
    if (direccion==3) {
      posX--;
    }
    if (direccion==4) {
      posX++;
    }

    if (posY>630) {
      posY=630;
    }
    if (posY<-220) {
      posY=-220;
    }
    if (posX>515) {
      posX=515;
    }
    if (posX<-310) {
      posX=-310;
    }
  }

void aparecer() {
    this.apareceEnPantalla=true;
  }
  void desaparecer() {
    this.apareceEnPantalla=false;
  }
}
