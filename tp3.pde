/*
Adrian Nedbala Tp3 comicion 4
https://youtu.be/ekxzrBMuYHU
profe en el video me olvide de dejar el numero de legajo es: 88217/3
*/
int rotacion=794;
int R;
int cantA=2;
int cantB=1500;
color  NwColor = color(0, 0, 200), NwColor2 = color(0, 200, 0);

void setup() {
  size(800, 600);
  background(200);
  noStroke();
  ellipseMode(CENTER);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotate(radians (R));
  for (int A = 0; A <= cantA; A +=10) {
    for (int B = 0; B <= cantB; B +=1) {
      fill(255, 230);
      rotate(cantA*rotacion);
      ellipse(0+B, 0+B, B+5, B+5);

      fill(NwColor, 190);
      rotate(rotacion*cantB);
      ellipse(0+B, 0+B, B, B);

      fill(0, 230);
      rotate(cantA*rotacion);
      ellipse(0+B, 0+B, B+5, B+5);

      fill(NwColor2, 190);
      rotate(rotacion*cantB);
      ellipse(0+B, 0+B, B, B);
    }
  }
  println(cantA, cantB, rotacion);
}


void mouseMoved() {
  //rotacion=round(map(mouseX, 0, width, 12, 1000));
  if (mouseX<height/2) {
    NwColor2 = color(0, random(150, 255), 0, mouseY);
    ;
  } else {
    NwColor = color(0, 0, random(125, 255), mouseY);
    ;
  } 
  R++;
}

void keyPressed() {
  rotacion=794;
  R=0;
  NwColor = color(0, 0, 200);
  NwColor2 = color(0, 200, 0);
}
