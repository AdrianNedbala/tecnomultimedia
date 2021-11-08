class Harry {

  boolean up, down, left, right;
  int HarryimgFrames=36;
  int frameActual, loopFrames, offSet, delay;
  int posXplayer, posYplayer, tamPlayer=25, velocidadCaminando, playerboxW, playerboxH;
  PImage [] harryImg = new PImage [HarryimgFrames];

  //constructor
  Harry() {
    imageMode(CENTER);
    for (int i=0; i<HarryimgFrames; i++) {      
      this.harryImg[i] = loadImage("./mapas/harry/"+ nf(i, 2) + ".png");
      this.harryImg[i].resize(tamPlayer, tamPlayer*2);
    }
    this.posXplayer = 225;
    this.posYplayer = -170;
    this.tamPlayer = 25;

    this.velocidadCaminando=5;
    this.frameActual = 0;
    this.loopFrames = 8;
    this.offSet = 0;
    this.delay = 0;
    this.up=false;
    this.down=false;
    this.left=false;
    this.right=false;
  }


  //metodos
  void dibujar() {
    fill(0,255,0,100);
    rect(-50,-50,0,0);
   image(harryImg[frameActual+offSet], posXplayer, posYplayer);
    if (up) {
      offSet=0;
    }
    if (down) {
      offSet=9;
    }
    if (left) {
      offSet=18;
    }
    if (right) {
      offSet=27;
    }
    if (keyPressed==false) {
      frameActual=0;
    } else {
      if (delay==0) {
        frameActual=(frameActual+1)%loopFrames;
      }
    }
    delay = (delay+1)%5;
   // println("posXplayer:", posXplayer, "posYplayer:", posYplayer);
  }

  void moverUP() {
    if (keyCode == UP) {
      this.posYplayer = this.posYplayer - velocidadCaminando ;
      up=true;      
      right=false;
      down=false;
      left=false;
      if (posYplayer<-220) {
        posYplayer=-220;
      }
    }
  }
  void moverDOWN() {
    if (keyCode == DOWN) {
      this.posYplayer = this.posYplayer + velocidadCaminando;
      down=true;
      right=false;
      up=false;
      left=false;
      if (posYplayer>515) {
        posYplayer=515;
      }
    }
  }
  void moverLEFT() {
    if (keyCode == LEFT) {
      this.posXplayer = this.posXplayer - velocidadCaminando;
      left=true;
      right=false;
      up=false;
      down=false;
      if (posXplayer<-310) {
        posXplayer=-310;
      }
    }
  }
  void moverRIGHT() {
    if (keyCode == RIGHT) {
      this.posXplayer = this.posXplayer + velocidadCaminando;
      right=true;
      up=false;
      down=false;
      left=false;
      if (posXplayer>630) {
        posXplayer=630;
      }
    }
  }
}
