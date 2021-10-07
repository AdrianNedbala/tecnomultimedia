/*
https://youtu.be/M636Q9V49Bk

Adrian Nedbala Tp4 comicion 4
legajo 88217/3
se avanza con enter, y clickeando en los botones(en el texto).
*/

import processing.sound.*;
SoundFile soundtk;

int TimeIntro, s=0, X=500, Y=450, YaR=450;
int pantalla = 999;
int botonX=width, botonY=height, botonTam=10;
int [] mX = new int [40];
int [] mY = new int [40];

PFont fuente;
PFont geo;
PImage logo;
PImage []intro = new PImage[5];
PImage []UI = new PImage[5];
PImage []picture = new PImage[24];

String []textos;
String textoEntero;
String []parrafo;

boolean noBoton = false;

float [] transparencia = new float[15];

color colBotonNormal = color(65, 100), colBoton = color(100, 100), colBotonClick = color(255, 85);

void setup() {
  size(600, 400);
  fuente=loadFont ("MonotypeCorsiva-48.vlw");
  geo = createFont("Georgia",64);
  textFont(fuente);
  textos = loadStrings("./texto/texto.txt");
  textoEntero = join(textos, " ");
  parrafo = split(textoEntero, "/");
  logo = loadImage("./intro/logo.png");
  soundtk = new SoundFile(this, "./sound/0.mp3");
  soundtk.play();
  

  for (int i = 0; i < intro.length; i++) {
    intro[i] = loadImage("./intro/" + i + ".jpg");
  }
  for (int i = 0; i < UI.length; i++) {
    UI[i] = loadImage("./Ui/menu_" + i + ".png");
  }
  for (int i = 0; i < picture.length; i++) {
    picture[i] = loadImage("./img/" + i + ".png");
  }

  for (int i = 0; i < mX.length; i++) {
    mX[i] = 0;
    mY[i] = 0;
  } 
  transparencia[1]=300;
  transparencia[2]=0;
  transparencia[3]=300;
  transparencia[4]=0;
  transparencia[5]=250;
  transparencia[6]=0;
  transparencia[7]=250;
  transparencia[8]=0;
  transparencia[9]=250;
  transparencia[10]=0;
  transparencia[11]=250;
  transparencia[12]=0;
}
void draw() {
  background(0);

  //************************************************************Intro/creditos
  if (TimeIntro<=59) {
    TimeIntro=TimeIntro+1;
  } else {
    s=s+1;
    TimeIntro=0;
  }

  if (pantalla==999) {
    noBoton=false;
    textFont(fuente);
    rectMode(CORNER);
    imageMode(CENTER);
    logo.resize(width-100, height-100);
    image(logo, width/2, height/2);
    textSize(20);
    text("Presiona enter para saltear titulos", width/3, 370);
    if (s>=0) {     
      transparencia[0]=transparencia[0]+1;
    }
    fill(0, transparencia[0]);
    rect(0, 0, width, height);
    if (s>=5) {
      intro[0].resize(1200, height-50);
      image(intro[0], X+150, height/2);
      fill(0, transparencia[1]);    
      transparencia[1]=transparencia[1]-1;

      rect(0, 0, width, height);
      fill(255);
      textSize(25);
      text("ACTOR   ...  CHARACTER", width/2-130, Y-30);
      textAlign(LEFT);
      text("Daniel Radcliffe  ...  Harry Potter \n Emma Watson  ...  Hermione Granger \n Rupert Grint  ...  Ron Weasley \n David Thewlis  ...  Professor Lupin \n Gary Oldman  ...  Sirius Black \n Michael Gambon  ...  Albus Dumbledore \n Alan Rickman  ...  Professor Severus Snape \n Maggie Smith  ...  Minerva McGonagall \n Robbie Coltrane  ...  Rubeus Hagrid", width/2-170, Y);
    }
    if (s>=7) {
      X--;
    }
    if (s>=8) {
      Y--;
    }
    if (s>=15) {    
      transparencia[2]=transparencia[2]+2;  

      fill(0, transparencia[2]);
      rect(0, 0, width, height);
    }
    if (s>=18) {
      YaR++;
      intro[1].resize(width-50, 1800);
      image(intro[1], width/2, YaR-500);
      fill(0, transparencia[3]);
      transparencia[3]--;
      rect(0, 0, width, height);
      fill(255);
      textSize(25);
      textAlign(LEFT);
      text("Timothy Spall  ...  Peter Pettigrew \n Tom Felton  ...  Draco Malfoy \n Josh Herdman  ...  Gregory Goyle \n Oliver Phelps  ...  George Weasley \n James Phelps  ...  Fred Weasley \n Julie Walters  ...  Mrs. Molly Weasley \n Bonnie Wright  ...  Ginny Weasley \n Mark Williams  ...  Mr. Arthur Weasley \n Matthew Lewis  ...  Neville Longbottom", width/2-170, Y+700); 
      if (s>=26) {      
        transparencia[4]=transparencia[4]+2;  

        fill(0, transparencia[4]);
        rect(0, 0, width, height);
      }
      if (s>=30) {
        intro[2].resize(width-50, 1800);
        image(intro[2], width/2, YaR-1000);
        fill(0, transparencia[5]);      
        transparencia[5]--;

        rect(0, 0, width, height);
        fill(255);
        textSize(25);
        textAlign(LEFT);
        text("Richard Griffiths  ...  Uncle Vernon \n Fiona Shaw  ...  Aunt Petunia \n Harry Melling  ...  Dudley Dursley \n Pam Ferris  ...  Aunt Marge \n Adrian Rawlins  ...  James Potter \n Geraldine Somerville  ...  Lily Potter \n Robert Hardy  ...  Cornelius Fudge \n Dawn French  ...  Fat Lady in Painting \n Emma Thompson  ...  Professor Sybil Trelawney", width/2-170, Y+1300);
      }
    }
    if (s>=37) {    
      transparencia[6]=transparencia[6]+2;  
      fill(0, transparencia[6]);
      rect(0, 0, width, height);
    }
    if (s>=40) {
      intro[3].resize(width, height);
      image(intro[3], width/2, height/2);
      fill(0, transparencia[7]);    
      transparencia[7]--;
      rect(0, 0, width, height);
      fill(255);
      textSize(25);
      textAlign(LEFT);
      text(" DIRECTED by \n   Alfonso Cuaron \nWRITINGS CREDITS \n   J.K. Rowling ... novel \n   Steve Kloves ... screenplay \n PRODUCED by \n   Michael Barnathanr \n   Chris Carreras \n   Chris Columbus \n   Paula DuPre Pesmen \n   David Heyman \n   Callum McDougall \n   Lorne Orleans \n   Mark Radcliffe \n   Tanya Seghatchian \nMUSIC by\n   John Williams", width/2-170, Y+2000);
    }
    if (s>=52) {    
      transparencia[8]=transparencia[8]+2;  
      fill(0, transparencia[8]);
      rect(0, 0, width, height);
    }
    if (s>=57) {
      intro[4].resize(width-130, height-100);
      image(intro[4], width/2, height/2);
      fill(0, transparencia[9]);    
      transparencia[9]--;

      rect(0, 0, width, height);
      fill(255);
      textSize(25);
      textAlign(LEFT);
      text("CINEMATOGRAPHY by \n   Michael Seresin \n   Steven Weisberg \nCASTING By \n   Jina Jay \nPRODUCTION Design by \n   Stuart Craig \nART DIRECTION by \n   Andrew Ackland-Snow \n   Alan Gilmore  \n   Neil Lamont \n   Steven Lawrence  \n   Gary Tomkins  \n   Alexandra Walker  \nSET DECORATION by \n   Stephenie McMillan\nCOSTUME DESIGN by \n   Jany Temime", width/2-170, Y+3000);
    }
    if (s>=67) {    
      transparencia[10]=transparencia[10]+0.9;  
      fill(0, transparencia[10]);
      rect(0, 0, width, height);
    }

    //************************************************************MENU
    if (s>=72) {   
      s=100;  
      transparencia[11]=transparencia[11]+2;  
      fill(0, transparencia[11]);
      rect(0, 0, width, height);  
      fill(255);
      
      pantalla = pasarPantalla(0, 0, "Start", width/2, height/3+150, 70, 30, 999, 0);
      fill(255);
      if (crearBoton(width/2, height/2+150, 100, 30, "Creditos")==true) {
        noBoton=false;
        s=0;
        X=500; 
        Y=450;
        YaR=450; 
        soundtk.stop();  
        soundtk.play();  
        transparencia[0]=0;
        transparencia[1]=300;
        transparencia[2]=0;
        transparencia[3]=300;
        transparencia[4]=0;
        transparencia[5]=250;
        transparencia[6]=0;
        transparencia[7]=250;
        transparencia[8]=0;
        transparencia[9]=250;
        transparencia[10]=0;
        transparencia[11]=250;
        transparencia[12]=0;
      }
    }
} else if (pantalla==0) {  //********************************caminoPrincipal
    soundtk.stop();
    pantalla = pasarPantalla(3, 1, " ", width/2, height/2+180, width-180, height/3, pantalla, 100);
    noBoton=false;
    SlideImag_Y_Text(picture, 0, parrafo, 0,1,2,3,4);
  
} else if (pantalla==100) {
    noBoton=false;
    pasarPantalla(3, 1, "0", 0, 0, 0, 0, pantalla, 100);
    SlideImag_Y_Text(picture, 0, parrafo, 0,1,2,3,4);
    pantalla = botonElegirCamino("inflarla como globo", "combertirla en babosa", "salir corriendo", pantalla, 1, 1, 19 ,height);
 
} else if (pantalla==1) {
    pantalla = pasarPantalla(3, 1, "0",0 ,0 ,0 ,0 , pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo, 5,6,7,8,9);
    
} else if (pantalla==2) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo,10,11,12,13,14);
    
} else if (pantalla==3) {
    pantalla = pasarPantalla(3, 1, "0", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo, 15,16,17,18,19);
    
} else if (pantalla==4) {
    pantalla = pasarPantalla(3, 1, "0", width/2, height/2+180, width-200, height/3, pantalla, 101);
    noBoton=false;
    SlideImag_Y_Text(picture, 4, parrafo, 20,21,22,23,24);
  
} else if (pantalla==101) {
    noBoton=false;
    pasarPantalla(3, 1, "0" ,0 ,0 ,0 ,0 , pantalla, 101);
    SlideImag_Y_Text(picture, 4, parrafo, 20,21,22,23,24);
    pantalla = botonElegirCamino("no hacer nada", "detener a Malfoy", " ", pantalla, 5, 23, 101 ,height*10);
    
} else if (pantalla==5) {
    pantalla = pasarPantalla(3, 1, "0", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo, 25,26,27,28,29);
  
} else if (pantalla==6) {
    pantalla = pasarPantalla(3, 1, "", 0,0,0,0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo, 30,31,32,33,34);
  
} else if (pantalla==7) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo, 35,36,37,38,39);
  
} else if (pantalla==8) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo, 40,41,42,43,44);
  
} else if (pantalla==9) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo, 45,46,47,48,49);
  
} else if (pantalla==10) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo, 50,51,52,53,54);
  
} else if (pantalla==11) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo, 55,56,57,58,59);
  
} else if (pantalla==12) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo,60,61,62,63,64);
  
} else if (pantalla==13) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo, 65,66,67,68,69);
  
} else if (pantalla==14) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo, 70,71,72,73,74);
  
} else if (pantalla==15) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo, 75,76,77,78,79);
  
} else if (pantalla==16) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo, 80,81,82,83,84);
  
} else if (pantalla==17) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo, 85,86,87,88,89);
  
} else if (pantalla==18) {
    pantalla = pasarPantalla(3, 1, " ",width/2, height/2+150, width-200, height/3, 18, 999);
    noBoton=false;
    SlideImag_Y_Text(picture, 18, parrafo, 90,91,92,93,94);///pantalla_18==final_A///////////////////////////////////////////////////////////////////////////
  
} else if (pantalla==19) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, pantalla, parrafo, 95,96,97,98,99);
  
} else if (pantalla==20) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, 2, parrafo, 100,101,102,103,104);
    
} else if (pantalla==21) {
    pantalla = pasarPantalla(3, 1, " ",width/2, height/2+180, width-200, height/3, 21, 999);
    noBoton=false;
    SlideImag_Y_Text(picture, 21, parrafo, 105,106,107,108,109);///pantalla_21==final_B///////////////////////////////////////////////////////////////////////////

} else if (pantalla==22) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, 22, parrafo, 110,111,112,113,114);
    
} else if (pantalla==23) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, 6, parrafo, 115,116,117,118,119);
    
} else if (pantalla==24) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, 7, parrafo, 120,121,122,123,124);
    
} else if (pantalla==25) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, 8, parrafo, 125,126,127,128,129);
    
} else if (pantalla==26) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, 9, parrafo, 130,131,132,133,134);
    
} else if (pantalla==27) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, 10, parrafo, 135,136,137,138,139);
    
} else if (pantalla==28) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, 11, parrafo, 140,141,142,143,144);
    
} else if (pantalla==29) {
    pantalla = pasarPantalla(3, 1, " ", 0, 0, 0, 0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, 12, parrafo, 145,146,147,148,149);
    
} else if (pantalla==30) {
    pantalla = pasarPantalla(3, 1, " ",width/2, height/2+180, width-200, height/3, 30, 102);
    noBoton=false;
    SlideImag_Y_Text(picture, 13, parrafo, 150,151,152,153,154);
    
} else if (pantalla==102) {
    noBoton=false;
    pasarPantalla(3, 1, "0" ,0 ,0 ,0 ,0 , pantalla, 101);
    SlideImag_Y_Text(picture, 4, parrafo, 150,151,152,153,154);
    pantalla = botonElegirCamino("dejarlos", "detenerlos!", " ", pantalla, 31, 33, 102 ,height*10);
    
} else if (pantalla==31) {
    pantalla = pasarPantalla(3, 1, " ",0,0,0,0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, 22, parrafo, 155,156,157,158,159);
    
}  else if (pantalla==32) {
    pantalla = pasarPantalla(3, 1, " ",width/2, height/2-50, width-114, height-150, pantalla, 18);
    noBoton=false;
    SlideImag_Y_Text(picture, 23, parrafo, 160,161,162,163,164);///pantalla_32==final_A///////////////////////////////////////////////////////////////////////////
    
}  else if (pantalla==33) {
    pantalla = pasarPantalla(3, 1, " ",0,0,0,0, pantalla, pantalla+1);
    noBoton=true;
    SlideImag_Y_Text(picture, 14, parrafo, 165,166,167,168,169);
    
}  else if (pantalla==34) {
    pantalla = pasarPantalla(3, 1, " ",0,0,0,0, 34, 35);
    noBoton=true;
    SlideImag_Y_Text(picture, 15, parrafo, 170,171,172,173,174);
    
}  else if (pantalla==35) {
    pantalla = pasarPantalla(3, 1, " ",width/2, height/2+180, width-200, height/3, pantalla, 999);
    noBoton=false;
    SlideImag_Y_Text(picture, 20, parrafo, 175,176,177,178,179);///pantalla_34==final_C///////////////////////////////////////////////////////////////////////////
    
} 






  puntero(s);
  println( s, pantalla, noBoton);
}



/*
void mouseClicked(){
if (mouseX > width/2-70/2 && mouseX < width/2 + 70/2 && mouseY > height/3+150-30/2 && mouseY < height/3+150 + 30/2 && (pantalla==999)&&(s==100)){
}
}*/

void keyPressed() {
  if (s!=100) {
    s=100;
  }
if ((keyCode == ENTER) && (s>=100) && (noBoton==true) && (pantalla!=999)) {
  pantalla++;
}
}
