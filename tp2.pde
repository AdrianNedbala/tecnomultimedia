import ddf.minim.*;
Minim soundengine;
AudioSample sonido1;
PFont fuente;
PImage logo;
PImage titulos1;
PImage titulos2;
PImage titulos3;
PImage titulos4;
PImage titulos5;
int time;
int s=0;
int Y=450;
int YaR=450;
int X=500;
float transparencia;
float transparencia2=300;
float transparencia3;
float transparencia4=300;
float transparencia5;
float transparencia6=250;
float transparencia7;
float transparencia8=250;
float transparencia9;
float transparencia10=250;
float transparenciaF;

void setup() {
  size(600, 400);
  soundengine = new Minim(this);
  sonido1 = soundengine.loadSample("HedwigsTheme.mp3");
  sonido1.trigger();
  fuente=loadFont ("MonotypeCorsiva-48.vlw");
  textFont(fuente);
  logo = loadImage("logo.png");
  titulos1 = loadImage("titulos1.jpg");
  titulos2 = loadImage("titulos2.jpg");
  titulos3 = loadImage("titulos3.jpg");
  titulos4 = loadImage("titulos4.jpg");
  titulos5 = loadImage("titulos5.png");
}


void draw() {
  background(0);

  if (time<=59) {
    time=time+1;
  } else {
    s=s+1;
    time=0;
  }

  logo.resize(width-100, height-200);
  imageMode(CENTER);
  image(logo, width/2, height/2);
  if (s>=0) {
    transparencia=transparencia+0.9;
  }
  fill(0, transparencia);
  rect(0, 0, 600, 400);

  if (s>=5) {
    titulos1.resize(1200, height-50);
    image(titulos1, X+150, height/2);
    fill(0, transparencia2);
    transparencia2=transparencia2-1;
    rect(0, 0, 600, 400);
    fill(255);
    textSize(25);
    text("ACTOR   ...  CHARACTER", width/2-130, Y-30);
    textAlign(LEFT);
    text("Daniel Radcliffe  ...  Harry Potter \n Emma Watson  ...  Hermione Granger \n Rupert Grint  ...  Ron Weasley \n David Thewlis  ...  Professor Lupin \n Gary Oldman  ...  Sirius Black \n Michael Gambon  ...  Albus Dumbledore \n Alan Rickman  ...  Professor Severus Snape \n Maggie Smith  ...  Minerva McGonagall \n Robbie Coltrane  ...  Rubeus Hagrid", width/2-170, Y);
    if (s>=7) {
      X--;
    }
    if (s>=8) {
      Y--;
    }
    if (s>=15) {
      transparencia3=transparencia3+2;  
      fill(0, transparencia3);
      rect(0, 0, 600, 400);
    }
  }
  //************************PANTALLA 2**********************************
  if (s>=18) {
    YaR++;
    titulos2.resize(width-50, 1800);
    image(titulos2, width/2, YaR-500);
    fill(0, transparencia4);
    transparencia4--;
    rect(0, 0, 600, 400);
    fill(255);
    textSize(25);
    textAlign(LEFT);
    text("Timothy Spall  ...  Peter Pettigrew \n Tom Felton  ...  Draco Malfoy \n Josh Herdman  ...  Gregory Goyle \n Oliver Phelps  ...  George Weasley \n James Phelps  ...  Fred Weasley \n Julie Walters  ...  Mrs. Molly Weasley \n Bonnie Wright  ...  Ginny Weasley \n Mark Williams  ...  Mr. Arthur Weasley \n Matthew Lewis  ...  Neville Longbottom", width/2-170, Y+700); 
    //***********************pantalla 3***************************************
    if (s>=26) {
      transparencia5=transparencia5+2;  
      fill(0, transparencia5);
      rect(0, 0, 600, 400);
    }
    if (s>=30) {
      titulos3.resize(width-50, 1800);
      image(titulos3, width/2, YaR-1000);
      fill(0, transparencia6);
      transparencia6--;
      rect(0, 0, 600, 400);
      fill(255);
      textSize(25);
      textAlign(LEFT);
      text("Richard Griffiths  ...  Uncle Vernon \n Fiona Shaw  ...  Aunt Petunia \n Harry Melling  ...  Dudley Dursley \n Pam Ferris  ...  Aunt Marge \n Adrian Rawlins  ...  James Potter \n Geraldine Somerville  ...  Lily Potter \n Robert Hardy  ...  Cornelius Fudge \n Dawn French  ...  Fat Lady in Painting \n Emma Thompson  ...  Professor Sybil Trelawney", width/2-170, Y+1300);
    }
  }
  //************************PANTALLA 4*********************************
  if (s>=37) {
    transparencia7=transparencia7+2;  
    fill(0, transparencia7);
    rect(0, 0, 600, 400);
  }
  if (s>=40) {
    titulos4.resize(width, height);
    image(titulos4, width/2, height/2);
    fill(0, transparencia8);
    transparencia8--;
    rect(0, 0, 600, 400);
    fill(255);
    textSize(25);
    textAlign(LEFT);
    text(" DIRECTED by \n   Alfonso Cuaron \nWRITINGS CREDITS \n   J.K. Rowling ... novel \n   Steve Kloves ... screenplay \n PRODUCED by \n   Michael Barnathanr \n   Chris Carreras \n   Chris Columbus \n   Paula DuPre Pesmen \n   David Heyman \n   Callum McDougall \n   Lorne Orleans \n   Mark Radcliffe \n   Tanya Seghatchian \nMUSIC by\n   John Williams", width/2-170, Y+2000);
  }
  //******************PANTALLA 5*****************************
  if (s>=52) {
    transparencia9=transparencia9+2;  
    fill(0, transparencia9);
    rect(0, 0, 600, 400);
  }
  if (s>=57) {
    titulos5.resize(width-130, height-100);
    image(titulos5, width/2, height/2);
    fill(0, transparencia10);
    transparencia10--;
    rect(0, 0, 600, 400);
    fill(255);
    textSize(25);
    textAlign(LEFT);
    text("CINEMATOGRAPHY by \n   Michael Seresin \n   Steven Weisberg \nCASTING By \n   Jina Jay \nPRODUCTION Design by \n   Stuart Craig \nART DIRECTION by \n   Andrew Ackland-Snow \n   Alan Gilmore  \n   Neil Lamont \n   Steven Lawrence  \n   Gary Tomkins  \n   Alexandra Walker  \nSET DECORATION by \n   Stephenie McMillan\nCOSTUME DESIGN by \n   Jany Temime", width/2-170, Y+3000);
  }
  //*************************FIN*****************************
  if (s>=67) {
    transparenciaF=transparenciaF+0.9;  
    fill(0, transparenciaF);
    rect(0, 0, 600, 400);
    if (s>=73) {
      fill(255);
      textSize(random(10, 80));
      textAlign(CENTER);
      text(" The end ", random(0, 800), random(0, 600));
      textSize(random(10, 80));
      textAlign(CENTER);
      text(" The end ", random(0, 800), random(0, 600));
    }

    if ((s>=73) && (s>=75)) {
      background(0);
      fill(255);
      textSize(45);
      textAlign(CENTER);
      text(" The end. ", width/2, height/2);
    }
    if ((s>=76) || (s>=999999)) {
      background(0);
      fill(255);
      textSize(25);
      textAlign(CENTER);
      text(" click to restart ", width/1-85, height/1);
      sonido1.stop();
    }
  }


  println(mouseX, mouseY, s);
}

void mouseClicked() {
  if (s>1) {
    time=0;
    s=0;
    Y=450;
    YaR=450;
    X=500;
    transparencia=0;
    transparencia2=300;
    transparencia3=0;
    transparencia4=300;
    transparencia5=0;
    transparencia6=250;
    transparencia7=0;
    transparencia8=250;
    transparencia9=0;
    transparencia10=250;
    transparenciaF=0;
    sonido1.stop();
    sonido1.trigger();
  }
}
