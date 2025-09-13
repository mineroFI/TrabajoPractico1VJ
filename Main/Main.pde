SistemaParticulas sistema;

void setup() {
  size(800, 600);
  sistema = new SistemaParticulas(width/2, height/2);
  frameRate(60);
  smooth(4);
  background(0);
}

void draw() {
  fill(0, 30);
  noStroke();
  rect(0, 0, width, height);

  // Mover el origen al mouse para interacción
  sistema.origenX = mouseX;
  sistema.origenY = mouseY;

  // Emitir algunas partículas por frame
  for (int i = 0; i < 1; i++) {
    sistema.agregarParticula();
  }

  // Actualizar y dibujar
  sistema.update();
  sistema.display();

}
