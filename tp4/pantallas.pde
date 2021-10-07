
int pasarPantalla(int imageUI, int imageUI2,String textoB, int posXBoton, 
  int posYBoton, int anchBoton, int altBoton, int pantallaActual, 
  int pantallaSiguinte) { 
    UI[imageUI].resize(width, height);
    image(UI[imageUI], width/2, height/2);
    UI[imageUI2].resize(width, height);
    image(UI[imageUI2], width/2, height/2);
    if(crearBoton(posXBoton, posYBoton, anchBoton, altBoton, textoB)){
  return pantallaSiguinte;
}

return pantallaActual;
}

boolean crearBoton(float posX, int posY, int ancho, int alto, String texto) {
  fill(255);
  textAlign(CENTER);
  text(texto, posX, posY+4);
  boolean hiceClick = false;
  fill(colBotonNormal);
  if (mouseX > posX-ancho/2 && mouseX < posX + ancho/2 && mouseY > posY-alto/2 && mouseY < posY + alto/2) {
    ancho=ancho+15;
    alto=alto+15;
    fill(colBoton);
    if (mousePressed) {
      fill(colBotonClick);
      hiceClick = true;
    }
  }
  noStroke();
  rectMode(CENTER);
  rect(posX, posY, ancho, alto,10);
  return hiceClick;
}


int botonElegirCamino(String texto1,String texto2,String texto3,int pantActual,
int pantSigA,int pantSigB,int pantSigC, int h) {
  
pantalla = pasarPantalla(2, 4,texto1, width/2+20, height/2+-52, 200, 35, pantActual, pantSigA);
pantalla = pasarPantalla(4, 4,texto2, width/2+20, height/2+7, 200, 35, pantActual, pantSigB);
pantalla = pasarPantalla(4, 4,texto3, width/2+20, h/2+64, 200, 35, pantActual, pantSigC);

  if (mouseX > width/2+20-200/2 && mouseX < width/2+20 + 200/2 && mouseY > height/2+-52-35/2 && mouseY < height/2+-52 + 35/2 && (mousePressed)) {
return pantSigA;}
  if (mouseX > width/2+20-200/2 && mouseX < width/2+20 + 200/2 && mouseY > height/2+7-35/2 && mouseY < height/2+7 + 35/2 && (mousePressed)) {
return pantSigB;}
  if (mouseX > width/2+20-200/2 && mouseX < width/2+20 + 200/2 && mouseY > height/2+64-35/2 && mouseY < height/2+64 + 35/2 && (mousePressed)) {
return pantSigC;}

return pantActual;
}

boolean SlideImag_Y_Text(PImage imagen[],int numImagen,String text[],int textPag1,int textPag2,int textPag3,int textPag4,int textPag5) {
boolean transicion=false;
imagen[numImagen].resize(width-114, height-14);
image(imagen[numImagen], width/2, height/2);
textFont(geo);
textSize(15);
fill(255);
text(text[textPag1], width/2, 330);
fill(0);
text(text[textPag1], width/2+1, 330+1);
fill(255);
text(text[textPag2], width/2, 345);
fill(0);
text(text[textPag2], width/2+1, 345+1);
fill(255);
text(text[textPag3], width/2, 360);
fill(0);
text(text[textPag3], width/2+1, 360+1);
fill(255);
text(text[textPag4], width/2, 375);
fill(0);
text(text[textPag4], width/2+1, 375+1);
fill(255);
text(text[textPag5], width/2, 390);
fill(0);
text(text[textPag5], width/2+1, 390+1);
if (keyPressed){
  transicion=true;
}
return transicion;
}
