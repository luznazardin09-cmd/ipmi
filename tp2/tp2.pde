PImage portada;
PImage boton;
PImage ironman;
PImage nick;
PImage thor;
PImage hulk;
PImage halcon;
PImage viuda;
PImage cap;
PImage estrellas;

float posXImagenI;
float posXImagenD;
float posYImagenI;
float posYImagenD;

int tamXBoton;
int tamYBoton;

float posXBoton;
float posYBoton;

boolean botonActivado; 

PFont fuente;
float posXTexto;
float posYTexto;
float tamTexto;
float posYTextoCap;
float posYTextoThor;

float Fondo;

int estado;
int contador;
float opacidad;

void setup() {
  size(640, 480);
  fuente= loadFont("Impact-48.vlw");
  textFont(fuente);
  
  portada=loadImage("logo.jpg");
  boton=loadImage("marvellogo.jpg");
  ironman=loadImage("ironman.png");
  nick=loadImage("nick.png");
  thor=loadImage("thor.png");
  hulk=loadImage("hulk.png");
  halcon=loadImage("halcon.png");
  viuda=loadImage("viudanegra.png");
  cap=loadImage("capamerica.png");
  estrellas=loadImage("estrellas.jpg");

  posXImagenI=width;
  posXImagenD=width - width/3;
  posYImagenI=height;
  posYImagenD=height - height/3;

  tamXBoton= 100;
  tamYBoton= 60;
  posXBoton= width/2 - tamXBoton/2;
  posYBoton= height - height/5 - tamYBoton/2;
  
  posXTexto=width/2;
  posYTexto=height/4;
  tamTexto= 25;
  
  posYTextoCap=height;
  posYTextoThor=height/3;

  Fondo=0;
  
  contador=0;
  opacidad=0;
  estado=1;
}

void draw() {
  background(0);
  
  image(estrellas,0,Fondo);
  Fondo+=2;
  
  if (Fondo>=0){
  Fondo=-height;}
  
if(estado==1){
  image(portada,0,0);
  if (mouseX>posXBoton && mouseX<posXBoton+tamXBoton && mouseY> posYBoton && mouseY < posYBoton + tamYBoton){
   image(boton,posXBoton,posYBoton,tamXBoton,tamYBoton); 
  }else{
    fill(200,0,0);
    
 rect(posXBoton, posYBoton, tamXBoton, tamYBoton); }
 
 if(botonActivado){
    estado=2;}

}
  if(estado==2){
  botonActivado=false;
  contador++;
  
  //if (contador>0 && contador<500) {
 // opacidad=map(contador, 0, 200, 0, 255);
 // if(contador > 300 && contador < 500){
 // opacidad = map(contador, 400, 500, 255, 0);}
  //tint(opacidad,255);
  
 // de izquierda a derecha 
   if (contador<10) {
      posXImagenI=-400;
    } else if (contador>10 && contador<100) {
      posXImagenI=map(contador, 10, 100, -400,width/2-width/2);
    } else if(contador>=400 && contador<500){
      posXImagenI=map(contador, 400, 500,width/2-width/2,-400);}
      
  image(nick,posXImagenI,-10);

 // de derecha a izquierda
    textSize(tamTexto);
    if (contador<10) {
      posXTexto=width;
    } else if (contador>10 && contador<100) {
      posXTexto=map(contador, 10, 100, width, width/2);
    } else if(contador>=400 && contador<500){
      posXTexto=map(contador, 400, 500, width/2, width);}
    
  String n = "Nick Fury, director de S.H.I.E.L.D. creador de la iniciativa Avengers, con el punto de reunir héroes extraordinarios y proteger al mundo de amenazas imposibles. Reuniendo héroes, como Iron Man, Capitan America, Thor, Hulk y Black Widow.";
  fill(200);
  text(n, posXTexto, posYTexto, 310, 400);
  
  //noTint();
  
  if (contador>500) {
  contador=0;
  estado=3;
  }
}

if (estado==3){
 contador++;
 
 //de derecha a izquierda
    if (contador<10) {
      posXImagenD=width;
    } else if (contador>10 && contador<100) {
      posXImagenD=map(contador, 10, 100, width, width-width/3);
    } else if(contador>=400 && contador<500){
      posXImagenD=map(contador, 400, 500, width-width/3, width);}
    
    image(ironman,posXImagenD,0);
    
//di izquierda a derecha    
    textSize(tamTexto);
    if (contador<10) {
      posXTexto=-300;
    } else if (contador>10 && contador<100) {
      posXTexto=map(contador, 10, 100, -300, 100);
    } else if(contador>=400 && contador<500){
      posXTexto=map(contador, 400, 500, 100, -300);}
    
 String i= "Tony Stark, un genio multimillonario que creó la armadura de Iron Man y modificando su propio cuerpocon un Reactor Arc para proteger al mundo con tecnología avanzada.";
 fill(200);
 text(i, posXTexto, posYTexto, 310, 400);
  
  
  if (contador>500) {
  contador=0;
  estado=4;
  }
}

if(estado==4){
contador++;

//de abajo a arriba
 if (contador<10) {
      posYImagenD=height;
    } else if (contador>10 && contador<100) {
      posYImagenD=map(contador, 10, 100, height, 90);
    } else if(contador>=400 && contador<500){
      posYImagenD=map(contador, 400, 500, 90, height);}
    
    image(cap,420,posYImagenD);

//de arriba a abajo
    textSize(tamTexto);
    if (contador<10) {
      posYTextoCap=-100;
    } else if (contador>10 && contador<100) {
      posYTextoCap=map(contador, 10, 100, -100,280);
    } else if(contador>=400 && contador<500){
      posYTextoCap=map(contador, 400, 500, 280, -100);}
    
  String c = "Steve Rogers, conocido como Capitán América,con su escudo representa el valor, la justicia y el espíritu de un verdadero héroe.";
  fill(200);
  text(c, 230, posYTextoCap, 200, 200);
  
  
  if (contador<10) {
      posYImagenI= -500;
    } else if (contador>10 && contador<100) {
      posYImagenI=map(contador, 10, 100, -500, 30);
    } else if(contador>=400 && contador<500){
      posYImagenI=map(contador, 400, 500, 30,-500);}
    
    image(thor,-20,posYImagenI);

//de abajo a arriba
    textSize(tamTexto);
    if (contador<10) {
      posYTextoThor=height+200;
    } else if (contador>10 && contador<100) {
      posYTextoThor=map(contador, 10, 100,height+200, 50);
    } else if(contador>=400 && contador<500){
      posYTextoThor=map(contador, 400, 500, 50, height+200);}
    
  String t = "Thor, dios del trueno y príncipe de Asgard, combatiendo con el poderoso martillo Mjolnir, y mas adelante con su hacha Stormbreaker";
  fill(200);
  text(t, 230, posYTextoThor, 200, 200);

  
   if (contador>500) {
  contador=0;
  estado=5;
  }
}



if(estado==5){
contador++;

 if (contador<10) {
      posYImagenI= -500;
    } else if (contador>10 && contador<100) {
      posYImagenI=map(contador, 10, 100, -500, 0);
    } else if(contador>=400 && contador<500){
      posYImagenI=map(contador, 400, 500, 0,-500);}
    
    image(viuda,0,posYImagenI);

    textSize(tamTexto);
    if (contador<10) {
      posYTexto=height+200;
    } else if (contador>10 && contador<100) {
      posYTexto=map(contador, 10, 100,height+200, height/4);
    } else if(contador>=400 && contador<500){
      posYTexto=map(contador, 400, 500, height/4, height+200);}
    
  String v = "Natasha Romanoff, la Viuda Negra, es una espía experta y una de las agentes más peligrosas de los Avengers.";
  fill(200);
  text(v, 300, posYTexto, 310, 400);
    
   if (contador>500) {
  contador=0;
  estado=6;
  }

}

if(estado==6){
contador++;

 if (contador<10) {
      posYImagenI= -500;
    } else if (contador>10 && contador<100) {
      posYImagenI=map(contador, 10, 100, -500, 0);
    } else if(contador>=400 && contador<500){
      posYImagenI=map(contador, 400, 500, 0,-500);}
    
    image(hulk,0,posYImagenI);

    textSize(tamTexto);
    if (contador<10) {
      posYTexto=height+200;
    } else if (contador>10 && contador<100) {
      posYTexto=map(contador, 10, 100,height+200, height/4);
    } else if(contador>=400 && contador<500){
      posYTexto=map(contador, 400, 500, height/4, height+200);}
    
  String h = "Bruce Banner se transforma en Hulk, una criatura de fuerza imparable impulsada por la ira.";
  fill(200);
  text(h, 320, posYTexto, 250, 400);
    
   if (contador>500) {
  contador=0;
  estado=7;
  }

}

if(estado==7){
contador++;

 if (contador<10) {
      posYImagenI= -500;
    } else if (contador>10 && contador<100) {
      posYImagenI=map(contador, 10, 100, -500, 0);
    } else if(contador>=400 && contador<500){
      posYImagenI=map(contador, 400, 500, 0,-500);}
    
    image(halcon,0,posYImagenI);

    textSize(tamTexto);
    if (contador<10) {
      posYTexto=height+200;
    } else if (contador>10 && contador<100) {
      posYTexto=map(contador, 10, 100,height+200, height/4);
    } else if(contador>=400 && contador<500){
      posYTexto=map(contador, 400, 500, height/4, height+200);}
    
  String a = "Sam Wilson, conocido como Ojo de Halcón, lucha desde el cielo utilizando alas de combate de alta tecnología";
  fill(200);
  text(a, 300, posYTexto, 250, 400);
    
   if (contador>500) {
  contador=0;
  estado=8;
  }

}
if(estado==8){
contador++;



}


}



void mousePressed() {
 

  if (mouseX>posXBoton && mouseX<posXBoton+tamXBoton && mouseY> posYBoton && mouseY < posYBoton + tamYBoton) {

    botonActivado=true; 
  }
}
  
