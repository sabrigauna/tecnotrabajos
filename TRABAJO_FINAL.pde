PImage fondito, perdiste, ganaste, instrucciones;
PFont mifont,font2;
int avanzar = -700;
float puntos;
int  inicio = -500;
int xspeed = 2;
float velocidad = 3.5;
int inst = 450;


//balls//
int baluno = -150;
int baldos = -550;
int baltres = -750;
int balcuatro = -2000;
int balcinco = -2700;
int balseis = -3100;
int balsiete = -3350;
int balocho = -3600;
int balnueve = -3800;
int baldiez = -25000;
int balonce = -28000;
int balonce2 = -30000;
int personaje = 0;

int contador = 0;
int framesPorSegundo = 0;
float dis;
float distancia;


float  tam;
float etam;

boolean perdi = false;

void setup() {

  //pantalla//
  size(500, 500);



  //imagenes//
  perdiste = loadImage("perdiste.jpg");
  instrucciones = loadImage("instrucciones.png");
  fondito = loadImage("fondito.png");
  ganaste = loadImage("ganaste.jpg");
  mifont = loadFont("Georgia-BoldItalic-48.vlw");
  font2 = loadFont("OratorStd-48.vlw");
}

void draw() {

  //fondo//
  background(#9dc65e);

//pantalla inicio//

  if (!perdi) {

  background(255);
    image(instrucciones, inst,0, width, height);
        inst = inst -2;
    
    
    textFont(font2);
    textSize(20);
    text("HAZ CLICK PARA COMENZAR", 0, 0);
        fill(#309D95);
    text("ayuda a Pikachu a escapar\n y esquiva las pokebolas", 100, 100);
    text("cada una sumara puntos,\nsi superas los 100", 90, 150);
    
        text("utiliza B y C para moverlo", 100, 250);
      textSize(35);
      fill(#B43150);
    text("PERDERÁS", 125, 200);
    textSize(25);
        fill(#309D95);
    text("haz click para comenzar", 100, 320);
  } else {  

    //personaje//
      background(#9dc65e);
    tam = 50;

    //enemigos//
    etam = 50;


    //tamaño de ambos//
    dis = dist (personaje, 380, 210, baluno);




    //el fondo se mueve//
    image(fondito, 0, avanzar, width, height);
    avanzar = avanzar +2;


    if (avanzar>550) {
      avanzar = inicio;
    }






    //pikachu //



    fill(#F0E052);

    ellipse(personaje, 380, 50, 50);
    fill (#9B7627);

    personaje = personaje + xspeed;

    if (personaje>450) {
      xspeed=-2;
    }

    if (personaje<=0) {
      xspeed=+2;
    }

    //teclas B //


    if (keyPressed) {
      if (key == 'b' || key == 'B') {
        xspeed=-1;
      }      


      //teclas C//

      if (keyPressed) {
        if (key == 'c' || key == 'C') {
          xspeed =+1;
        }
      }
    }





    //balls//




    if (0<20) {
      fill(#C92929);
      ellipse(210, baluno, 50, 50);
      textSize(11);
      fill(255);
      text("POKE\nBALL", 196, baluno);
      baluno = baluno +2;
    }


    //puntajes//

    if (dist (personaje, 380, 210, baluno) < etam/2 + tam/2) {
      //image(perdiste, 0, 0, width, height);
      contador++;
    }

    //enemigos//

    if (0<30) {
      fill(#C92929);
      ellipse(335, baldos, 50, 50);
      textSize(11);
      fill(255);
      text("POKE\nBALL", 320, baldos);
      baldos = baldos +2;
    }

    if (dist (personaje, 380, 335, baldos) < etam/2 + tam/2) {
      contador++;
    }


    if (0<40) {
      fill(#C92929);
      ellipse(129, baltres, 50, 50);
      textSize(11);
      fill(255);
      text("POKE\nBALL", 115, baltres);

      baltres = baltres +2;
    }
    if (dist (personaje, 380, 129, baltres) < etam/2 + tam/2) {
      contador++;
    }


    if (0<50) {
      fill(#C92929);
      ellipse(420, balcuatro, 50, 50);
      ellipse(220, balcuatro, 50, 50);
      textSize(11);
      fill(255);
      text("POKE\nBALL", 408, balcuatro);
      text("POKE\nBALL", 208, balcuatro);

      balcuatro = balcuatro +3;
    }


    if (dist (personaje, 380, 420, balcuatro) < etam/2 + tam/2) {
      contador++;
    } else if (dist (personaje, 220, 200, balcuatro) < etam/2 + tam/2) {
      contador++;
    }



    if (0<60) {
      fill(#C92929);
      ellipse(100, balcinco, 50, 50);
      ellipse(200, balcinco, 50, 50);
      ellipse(300, balcinco, 50, 50);
      textSize(11);
      fill(255);
      text("POKE\nBALL", 88, balcinco);
      text("POKE\nBALL", 182, balcinco);
      text("POKE\nBALL", 280, balcinco);
      balcinco = balcinco+3;
    }

    if (dist (personaje, 380, 100, balcinco) < etam/2 + tam/2) {
      contador++;
    } else if (dist (personaje, 380, 200, balcinco) < etam/2 + tam/2) {
      contador++;
    } else if (dist (personaje, 380, 300, balcinco) < etam/2 + tam/2) {
      contador++;
    }






    if (0<80) {
      fill(#C92929);
      ellipse(200, balsiete, 50, 50);
      ellipse(400, balsiete, 50, 50);
      ellipse(100, balsiete, 50, 50);

      fill(255);
      text("POKE\nBALL", 180, balsiete);
      text("POKE\nBALL", 380, balsiete);
      text("POKE\nBALL", 80, balsiete);

      balsiete = balsiete+3;
    } 


    if (dist (personaje, 380, 200, balsiete) < etam/2 + tam/2) {
      contador++;
    } else if (dist (personaje, 400, 200, balsiete) < etam/2 + tam/2) {
      contador++;
    } else if (dist (personaje, 380, 100, balsiete) < etam/2 + tam/2) {
      contador++;
    }



    if (0<90) {

      fill(#2B38AA);
      ellipse(100, balocho, 50, 50);
      ellipse(200, balocho, 50, 50);

      textSize(10);
      fill(255);
      text("MASTER\nBALL", 80, balocho);
      text("MASTER\nBALL", 180, balocho);

      balocho =  balocho+3;
    }


    if (dist (personaje, 380, 100, balocho) < etam/2 + tam/2) {
      contador++;
    } else if (dist (personaje, 380, 200, balocho) < etam/2 + tam/2) {
      contador++;
    }





    if (0<90) {

      fill(#C92929);

      ellipse(120, balnueve, 50, 50);
      ellipse (50, balnueve, 50, 50);
      ellipse(450, balnueve, 50, 50);
      fill(255);
      text("POKE\nBALL", 100, balnueve);
      text("POKE\nBALL", 30, balnueve);
      text("POKE\nBALL", 430, balnueve);

      balnueve = balnueve + 3;
    }


    if (dist (personaje, 380, 120, balnueve) < etam/2 + tam/2) {
      contador++;
    } else if (dist (personaje, 380, 50, balnueve) < etam/2 + tam/2) {
      contador++;
    } else if (dist (personaje, 380, 450, balnueve) < etam/2 + tam/2) {
      contador++;
    }



    if (0<100) {

      fill(#277644);
      ellipse(390, baldiez, 50, 50);
      ellipse(100, baldiez, 50, 50);
      ellipse(50, baldiez, 50, 50);

      fill(255);
      text("POKE\nBALL", 370, baldiez);
      text("POKE\nBALL", 80, baldiez);
      text("POKE\nBALL", 30, baldiez);
      baldiez = baldiez + 15;
    }


    if (dist (personaje, 380, 390, baldiez) < etam/2 + tam/2) {
      contador++;
    } else if (dist (personaje, 380, 100, baldiez) < etam/2 + tam/2) {
      contador++;
    } else if (dist (personaje, 380, 50, baldiez) < etam/2 + tam/2) {
      contador++;
    }



    if (0<110) {

      fill(#277644);
      ellipse(350, balonce2, 50, 50);
      ellipse(120, balonce2, 50, 50);
      ellipse(70, balonce2, 50, 50);

      fill(255);
      text("POKE\nBALL", 330, balonce2);
      text("POKE\nBALL", 100, balonce2);
      text("POKE\nBALL", 50, balonce2);
      balonce2 = balonce2 + 15;
    }



    if (dist (personaje, 380, 350, baldiez) < etam/2 + tam/2) {
      contador++;
    } else if (dist (personaje, 380, 120, baldiez) < etam/2 + tam/2) {
      contador++;
    } else if (dist (personaje, 380, 70, baldiez) < etam/2 + tam/2) {
      contador++;
    }



    // PANTALLA GANASTE//
    if (balonce2>3500) {
      image(ganaste, 0, 0, width, height);
      textSize(25);
      framesPorSegundo = 0;
      textFont(mifont, 25);
      text("¡GANASTE!\n dale click y reinicia", 200, 200);


      //reinicio si ganaste//
      if (mousePressed) {

        baluno = -150;
        baluno = -150;
        baldos = -550;
        baltres = -750;
        balcuatro = -2000;
        balcinco = -2700;
        balseis = -3100;
        balsiete = -3350;
        balocho = -3600;
        balnueve = -3800;
        baldiez = -25000;
        balonce = -28000;
        balonce2 = -30000;
        contador =0;
      }
    }



    // contador
    fill(#FF4848);
    textFont(mifont, 25);
    text("surviving points:"+contador, 200, 100);
    framesPorSegundo = framesPorSegundo + 1;
    if (framesPorSegundo == 60) {
      framesPorSegundo = 0;
    }

    //perdiste//

    if (contador>=100) {
      image(perdiste, 0, 0, width, height);
    }
  }
}

void mouseClicked() {
  if (!perdi) {

    perdi = !perdi;
  }
}
