void setup() {
size (500, 500); 
}

void draw(){
    background (50);

    line(250,0,250,500);
    line(0,416,500,84);
    line(500,416,0,84);
    line(500,84,250,250);
noStroke();
    line(250,0,250,500);
    line(0,416,500,84);
    line(500,416,0,84);
    line(500,84,250,250);
    fill(40);
    ellipse(250,250,600,600);
    fill(30);
    ellipse(250,250,500,500);
    fill(20);
    ellipse(250,250,400,400);
    fill(10);
    ellipse(250,250,315,315);
    fill(0);
    ellipse(250,250,215,215);


//primarios
    fill(5, 47, 187);//Azul
    triangle (250,250, 230,205,270,205);
    triangle (250,0, 230,205,270,205);
    fill(230, 0, 38);//Rojo
    triangle (250,250, 201,260, 223,291);
    triangle (39,389, 201,260, 223,291);
    fill(255, 233, 0);//Amarillo
    triangle (250,250, 299,260, 278,291);
    triangle (458,389, 299,259, 276,292);
//secundarios
    fill(239, 127, 26);//Naranja
    triangle (250,250, 235,297,265,297);
    triangle (250,407, 235,297,265,297);
    fill(0, 152, 70);//verde
    triangle (250,250, 284,213,300,239);
    triangle (380,162, 282,215,300,239);
    fill(125, 33, 129);//purpura
    triangle (250,250, 217,213,201,239);
    triangle (118,162, 218,214,201,239);
//terciarios
    fill(0, 155, 148);//azul verde
    triangle (250,250, 284,213,270,205);
    triangle (306,158, 284,214,270,205);
    fill(198, 206, 0);// verde amarillo
    triangle (250,250, 300,261,300,239);
    triangle (355,250, 300,260,300,239);
    fill(251, 186, 0);//amarillo naranja
    triangle (250,250, 265,297,278,291);
    triangle (300,346, 265,296,278,290);
    fill(231, 60, 0);//rojo naranja
    triangle (250,250, 235,297,223,291);
    triangle (203,346, 235,297,223,290);
    fill(178, 17, 84);//rojo purpura
    triangle (250,250, 201,260,201,239);
    triangle (142,250, 201,260,201,239);
    fill(120, 40, 140);//azul purpura
    triangle (250,250, 217,213,230,204);
    triangle (196,158, 217,213,230,205);
    
    
    fill(255);
//text("X:" + mouseX + "Y:" + mouseY, 430, 10);
text("Coloración tradicional (RYB)", 340, 10);
    }
