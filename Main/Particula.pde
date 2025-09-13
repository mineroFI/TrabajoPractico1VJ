class Particula {
  float x;
  float y;
  float velX;
  float velY;
  int vida;
  color col;

  Particula(float x, float y) {
    this.x = x;
    this.y = y;
    // Velocidad inicial aleatoria
    this.velX = random(-0.5, 0.5);
    this.velY = random(-1.0, -0.2);
    // Vida en frames
    this.vida = int(random(60, 120));
    this.col = color(random(200, 255), random(100, 200), random(0, 50));
  }

  void update() {
    // Gravedad ligera
    velY += 0.05;
    x += velX;
    y += velY;

    // Fricción suave
    velX *= 0.99;
    velY *= 0.99;

    // Decremento de vida
    vida--;
  }

  void display() {
    float alpha = map(vida, 0, 120, 0, 255);
    alpha = constrain(alpha, 0, 255);
    noStroke();
    fill(col, alpha);
    ellipse(x, y, 6, 6);
  }

  boolean isDead() {
    return vida <= 0;
  }
}
