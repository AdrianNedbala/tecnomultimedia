class Pelea {
  boolean inicio_pelea = false, turno, playerAtacando = false, enemyAtacando = false;
  int imgFrames = 28, imgFrames2 = 9, numUI = 2, imgPelea;
  int frameActual1, frameActual2, frameActual3;
  int loopFrames1, loopFrames2, loopFrames3;
  int offSet1, offSet2, offSet3;
  int delay1, delay2, delay3;
  int pHp, pMp, pAtk, pDef, pVel, pNivel; //player
  int eHp, eMp, eAtk, eDef, eVel, eNivel; //enemy
  int tipoDeEnemigo;
  PImage [] fondoPelea = new PImage [2];
  PImage [] gifsPersonajes = new PImage [imgFrames];
  PImage [] gifsHechizos = new PImage [imgFrames2];
  PImage [] UI = new PImage [numUI];
  Mapa mapa;

  Pelea() {


    this.frameActual1 = 0;//player
    this.loopFrames1 = 5;//player
    this.offSet1 = 0;//player
    this.frameActual2 = 0;//enemy
    this.loopFrames2 = 5;//enemy
    this.offSet2 = 0;//enemy    
    this.frameActual3 = 0;//hechizos
    this.loopFrames3 = 9;//hechizos
    this.offSet3 = 0;//hechizos
    this.imgPelea = 0;//fondos
    this.tipoDeEnemigo = 0/*round(random(0,5))*/;//fondos



    for (int i=0; i<fondoPelea.length; i++) {
      this.fondoPelea[i] = loadImage("./peleas/Fondo_pelea/" + i + ".jpg");
      this.fondoPelea[i].resize(width, height);
    }
    for (int i=0; i<gifsPersonajes.length; i++) {
      this.gifsPersonajes[i] = loadImage("./peleas/gifs_personajes/" + nf(i, 2) + ".png");
      this.gifsPersonajes[i].resize(90, 110);
    }
    for (int i=0; i<gifsHechizos.length; i++) {
      this.gifsHechizos[i] = loadImage("./peleas/gifs_Hechizos/" + nf(i, 2) + ".png");
    }
    for (int i=0; i<UI.length; i++) {
      this.UI[i] = loadImage("./peleas/" + i + ".png");
    }
  }

  boolean iniciarPelea() {
    inicio_pelea=true;
    return inicio_pelea;
  }
  boolean terminarPelea() {
    inicio_pelea=false;
    return inicio_pelea;
  }
  boolean turnoPlayer() {
    turno=true;
    return turno;
  }
  boolean turnoEnemy() {
    turno=false;
    return turno;
  }



  void dibujar(int enemyHp, int playerHp) {
    if (inicio_pelea==true) {
      image(this.fondoPelea[imgPelea], 400, 300);
      if (this.playerAtacando==false) {
        image(this.gifsPersonajes[frameActual1 + offSet1], width/2+140, height/2+120);
      } else {
        image(this.gifsHechizos[frameActual3 + offSet3], width/2+140, height/2+120);
        image(this.gifsPersonajes[frameActual1 + offSet1], width/2+140, height/2+120);
        this.loopFrames1 = 18;//player
        this.offSet1 = 6;//player
      }
      if (tipoDeEnemigo==0) {
        image(this.gifsPersonajes[frameActual2 + offSet2], width/2+-141, height/2+-27);
        this.loopFrames2 = 4;//player
        this.offSet2 = 24;//player
      }
      this.UI[0].resize(80, 171);
      image(this.UI[0], width/2+-367, height/2+212);
      this.UI[1].resize(80, 171);
      image(this.UI[1], width/2+-11, height/2+212);

      strokeWeight(1);//barrars de vida
      fill(75, 100);
      rect(84, 407, 254, 18);
      fill(255);
      text("Harry LvL: "+ pNivel, 90, 403);
      noStroke();
      fill(0, 230, 0);
      rect(86, 409, playerHp, 14);
      strokeWeight(1);
      fill(75, 100);
      rect(519, 100, 254, 18);
      fill(0, 230, 0);
      rect(522, 102, enemyHp, 14);//end barras de vida

      fill(229, 0, 0, 117);//selector de ataques
      rect(45, 448, 160, 60, 25);
      rect(45, 516, 160, 60, 25);
      rect(214, 448, 160, 60, 25);
      rect(214, 516, 160, 60, 25);
      textSize(25);
      fill(0);
      text("Flipendo", 240, 485);
      text("Lumos", 85, 554);
      text("Exppeliarmous", 37, 484);
      text("incendio", 246, 554);//end selector de ataques


      if (delay1==0) {
        frameActual1=(frameActual1+1)%loopFrames1;
      }
      if (delay2==0) {
        frameActual2=(frameActual2+1)%loopFrames2;
      }
      if (delay3==0) {
        frameActual3=(frameActual3+1)%loopFrames3;
      }
      delay1 = (delay1+1)%7;
      delay2 = (delay2+1)%10;
      delay3 = (delay3+1)%5;
    }
  }

  void enProceso() {




    if (keyCode == UP) {
    }

    if (keyCode == DOWN) {
    }

    if (keyCode == LEFT) {
    }

    if (keyCode == RIGHT) {
    }

    /*
    if (eHp==0) {
     inicio_pelea=false;
     }
     */
  }

  void teclaPresionada() {
  }
}
