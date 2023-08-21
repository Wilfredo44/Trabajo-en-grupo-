// Definición de la clase Círculo
class Circulo {
  float x, y; // Posición
  float radio; // Radio
  color col; // Color
  
  Circulo(float x, float y, float radio, color col) {
    this.x = x;
    this.y = y;
    this.radio = radio;
    this.col = col;
  }
  
  void mostrar() {
    fill(col);
    ellipse(x, y, radio * 2, radio * 2);
  }
}

Circulo[] circulos; // Arreglo para almacenar los círculos

void setup() {
  size(800, 600);
  
  // Crear varios objetos de tipo Circulo
  circulos = new Circulo[3];
  circulos[0] = new Circulo(100, 150, 50, color(255, 0, 0)); // Rojo
  circulos[1] = new Circulo(300, 300, 80, color(0, 255, 0)); // Verde
  circulos[2] = new Circulo(600, 200, 40, color(0, 0, 255)); // Azul
}

void draw() {
  background(220);
  
  // Mostrar y manipular propiedades de los círculos
  for (Circulo c : circulos) {
    c.x += random(-1, 1); // Mover ligeramente en x
    c.y += random(-1, 1); // Mover ligeramente en y
    c.mostrar();
  }
}
