
//grilla
int tamCelda;
int col;
int fila;

//image
PImage imagen;

//circulo
float posXcirculo;
float posYcirculo;
int tamCirculo;

//fondoCirulo
int tamFondoCirculo;

void setup(){
size(800,400);

imagen=loadImage("33.jpeg");

posXcirculo=width;
posYcirculo=height;
tamCirculo=57;
tamFondoCirculo=64;

col=5;
fila=5;
tamCelda=70;
rectMode(CENTER);
}


void draw(){
background(200);

image(imagen,0,0,400,400);

translate(400,0);
rotate(0);


circulo(posXcirculo,posYcirculo,tamCirculo);
grilla(tamCelda,col,fila);
  
}

void grilla(int tamCelda, int cantCol, int cantFil){

     for (int i = 0; i<=cantCol; i++) {
  for (int j = 0; j<=cantFil; j++) {
      
 circulo(tamCelda*i+tamCelda/2, tamCelda*j+tamCelda/2,tamCirculo);

    }
  }
 
}


void circulo(float posX, float posY, int tamCirculo){
noStroke();
push();
fondoCirculo(posX,posY,tamFondoCirculo);
fill(121,38,178);
circle(posX,posY,tamCirculo);
pop();

}


void fondoCirculo(float posX, float posY, int tamFondoCirculo){

fill(255);
circle(posX,posY,tamFondoCirculo);

fill(0);
arc(posX,posY,tamFondoCirculo,tamFondoCirculo,-HALF_PI,HALF_PI);

}
