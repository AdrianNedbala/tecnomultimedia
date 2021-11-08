class VentanaDeMensaje {
  boolean teclaPrecionada;
  String []textoCorto;
  float posX, posY;
  int tam;


  VentanaDeMensaje() {

    teclaPrecionada = false;
    posX=width/2;
    posY=height/2;
    tam=100;
  }

  void dibujar() {
    rect(width/2, height/2, width-tam, height-tam);
    fill(255);
    textAlign(CENTER);
    text(textoCorto[0], posX, posY);
  }

  boolean teclaPresionada() {
    if (key == 'z'||key == 'Z') {
      teclaPrecionada=true;
    } else {
      teclaPrecionada=false;
    }
    return teclaPrecionada;
  }
}
