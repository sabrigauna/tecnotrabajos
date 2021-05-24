int velocidad = 3;
int x = 550;
int avance;
PFont mifont;
PImage fondo, perdiste, ganaste, ball2, ball, pika, pokeball, segundap, elige;
float distancia;
int speed = 3;
boolean jugar = false;
int intentos;
int framesPorSegundo = 0;

void setup() {
  size(500, 500);


  mifont =  loadFont("OratorStd-48.vlw");
  fondo =  loadImage("fondo.jpg");
  ball = loadImage("ball.png");
  ball2 = loadImage("ball2.png");
  pokeball = loadImage("pokeball.jpg");
  ganaste = loadImage("ganaste.jpg");
  perdiste = loadImage("perdiste.jpg");
  pika = loadImage("pikachu.png");
  segundap = loadImage("segundap.jpg");
  avance = -550;
  image(fondo, 0, 0, width, height);
}



void draw() {

  if (jugar) {

    background(200); 


    image(segundap, avance, 0, width, height);
      textFont(mifont);
  textSize(25);
  text("presiona A, B o C \npara elegir tu pokemon", 100, 150);
  framesPorSegundo = framesPorSegundo + 1;
    avance = avance + speed;
    if (avance > 0) {
      avance=0;
    }


    if (mouseX<width) {
      image(pika, mouseX, mouseY, 50, 50);
    }


    if (keyPressed) {
      if (key == 'a' || key == 'A') {
        image(perdiste, 0, 0, width, height);
      }
    }  

    if (keyPressed) {
      if (key == 'b' || key == 'B') {
        image(ganaste, 0, 0, width, height);
      }

      if (keyPressed) {
        if (key == 'c' || key == 'C') {
          image(perdiste, 0, 0, width, height);
        }
      }
    }
  }





  // contador

  fill(0);
  textFont(mifont);
  textSize(25);
  text("tiempo transcurrido \npara la decisión:"+intentos, 200, 400);
  framesPorSegundo = framesPorSegundo + 1;
  if (framesPorSegundo == 60) {
    framesPorSegundo = 0;
  }


  if (keyPressed) {
    if (key == 'a' || key == 'A'|| key == 'b' ||key == 'B'|| key == 'c' || key == 'C') {
      intentos++;
    }
  }
}

void mouseClicked() {
  if (!jugar)

    jugar = !jugar;
}
