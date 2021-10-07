void puntero(int tiempo) {
if (tiempo >= 100){
  //************************************************************puntero luz
  for (int i = 0; i < mX.length-1; i++) {
    mX[i] = mX[i + 1];
    mY[i] = mY[i + 1];
  }
  mX[mX.length-1] = mouseX;
  mY[mY.length-1] = mouseY;
  for (int i = 0; i < mX.length; i++) {
    noStroke();
    fill(255-i/7);
    ellipse(mX[i], mY[i], i/8, i/8);
    fill(255-i/7, i);
    ellipse(mX[i], mY[i], i/3, i/3);
    ellipse(mX[i], mY[i], i/4, i/4);
    ellipse(mX[i], mY[i], i/5, i/5);
    stroke(255-i/5, i*5.5);
    point(mX[i]+random(0.1, 10.0)-random(0.1, 10.0), mY[i]-random(0.1, 10.0)+random(0.1, 10.0));
  }
}
}
