//TP2
//COMISION 5
// damian laurela, 91124/3

PFont fuente, fuenteExterna;

PImage fondo1;
PImage fondo2;
PImage fondo3;

int pantalla, tiempo, suma, diametro;

boolean ultimaPantalla;
color colorDelBoton, colorDelBotonCircular;

void setup() {
  size(640,480);
  fondo1 = loadImage("1.png");
  fondo2 = loadImage("2.jpg");
  fondo3 = loadImage("3.jpg");
  fuente = loadFont("fuente1.vlw");
  fuenteExterna = createFont("fuente2.otf", 100);

  textFont(fuenteExterna);
  textSize(30);

  pantalla = 0;
  tiempo = 0;
  suma = 1;
  diametro = 50;
  ultimaPantalla = false;
  colorDelBoton = color(120, 120, 120);
  colorDelBotonCircular = color(120, 120, 120);
}

void draw() {
  //<, >, <=, >=, ==, !=
  // y... &&, o... ||
  if (pantalla == 0) {

    push();
    
    background(225);
    image(fondo1,0,0);
    text("La Ilíada es un poema épico"+pantalla, 0, height/5);
    text("en veinticuatro cantos"+pantalla, 0, height/3.8);
    text("que tiene como argumento un"+pantalla, 0, height/3);
    text("episodio del último año de"+pantalla, 0, height/2.5);
    text("la guerra de Troya, Tanto la"+pantalla, 0, height/2.1);
    text("Ilíada como la Odisea fueron"+pantalla, 0, height/1.8);
    text("consideradas por los griegos"+pantalla, 0, height/1.6);
    
    println(mouseX+","+mouseY,1,0);
    pop();
  } else if (pantalla == 1) {

    push();
    background(255);
    image(fondo2,0,0);
    text("como las composiciones más"+pantalla, 0, height/5);
    text("importantes en la literatura"+pantalla, 0, height/3.8);
    text("de la Antigua Grecia y fueron"+pantalla, 0, height/3);
    text("utilizadas como fundamentos de"+pantalla, 0, height/2.5);
    text("la pedagogía griega,"+pantalla, 0, height/2.1);
    text("Ambas forman parte de una serie"+pantalla, 0, height/1.8);
    text("más amplia de poemas épicos"+pantalla, 0, height/1.6);
    
    
    println(mouseX+","+mouseY,1,0);
    pop();
  } else if (pantalla == 2) {
    background(255);
    image(fondo3,0,0);
    text("de diferentes autores y "+pantalla, 0, height/5);
    text("extensiones denominado"+pantalla, 0, height/3.8);
    text(" ciclo troyano; sin embargo,"+pantalla, 0, height/3);
    text("de los otros poemas, únicamente"+pantalla, 0, height/2.5);
    text("han sobrevivido fragmentos."+pantalla, 0, height/2.1);
    println(mouseX+","+mouseY,1,0);
    if (ultimaPantalla == true) {
      push();
      fill(colorDelBoton);
      rect(width/2, height/2+200, 300, 50);
      textSize(48);
      fill(0);
      text("Reiniciar", width/2, height/2+200, 300, 50);
      pop();
    }
  } else {
    background(255, 0, 0);
    text("NOS PASAMOS"+pantalla, 0, height/2);
  }

  rect(0, 0, tiempo, height/10);

  // tiempo += suma;
  if (ultimaPantalla == false) {
    tiempo = tiempo  + suma;
  }

  if (tiempo >= 300 && pantalla != 3) {
    tiempo = 0;
    if (pantalla != 2) {
      pantalla++;
    } else if (pantalla == 2) {
      ultimaPantalla = true;
    }
  }
  println(frameCount, tiempo);
}

void mouseClicked() {
  //pantalla++;
  //rect(width/2, height/2, 300, 50);
  if (ultimaPantalla == true) {

    ///BOTON RECTANGULAR:
    if (mouseX > width/2 && mouseX < width/2+320 &&
      mouseY > height/1.1 && mouseY < height/2+621) {
      pantalla = 0;
      tiempo = 0;
      suma = 1;
      ultimaPantalla = false;
    }

    ///BOTON CIRCULAR:

    // COMPARMOS LA DISTANCIA
    // ENTRE EL CENTRO DEL CIRCULO
    // Y NUESTRO MOUSEX, MOUSEY
    if (dist(100, height/2, mouseX, mouseY) < diametro/2) {
      pantalla = 0;
      tiempo = 0;
      suma = 1;
      ultimaPantalla = false;
    }
  }
}

void mouseMoved() {
  if (ultimaPantalla == true) {
    //CONDICION PARA BOTÓN RECTANGULAR
    if (mouseX > width/2 && mouseX < width/2+320 &&
      mouseY > height/1.1 && mouseY < height/2+621) {
      colorDelBoton = color(0, 437, 0);
    } else {
      colorDelBoton = color(120, 120, 120);
    }
    

    } else {
  }
}
