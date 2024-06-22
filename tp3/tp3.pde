//Damian Laurela
//Comisión 5
//tp 3
//https://youtu.be/et1haZtVHqQ?si=Rrbz8lEQhwnYiQGu


//variable global
float suma(float a, float b) {
    float resultado = a + b;
    //retorno de la suma
    return resultado;}
PImage photo; 
void setup(){
   float num1 = random(999);
 float num2 = random(999);

 float sumaResult = suma(num1, num2);
 //mostrar en pantalla el resultado
  println("La suma de " + num1 + " y " + num2 + " es= " + sumaResult);
  fill(#252871);
  size(800,400);
  background(255);
  photo = loadImage("7.jpg");
}

void draw (){


background(0);
//circulos de color
for (int o=67; o<width; o+=134) {
  ellipse(o, 67, 138, 138);;
  ellipse(o, 200, 138, 138);
  ellipse(o, 332, 138, 138);
  noStroke();
  //si presiono el mouse cambia color
  if(mousePressed && (mouseButton == LEFT))
  //llamado a funcion cambiar color
  cambiarcolor();
  
    //si presiono el mouse reinicia
  if(mousePressed && (mouseButton == RIGHT))
  //llamado a funcion reiniciar
  reiniciar();
  

}

  //imagen de la isquierda
image(photo,0,0);





}
