class SistemaParticulas {
  ArrayList<Particula> particulas;
  float origenX;
  float origenY;

  SistemaParticulas(float origenX, float origenY) {
    this.origenX = origenX;
    this.origenY = origenY;
    this.particulas = new ArrayList<Particula>();
  }

  void agregarParticula() {
    particulas.add(new Particula(origenX, origenY));
  }

  void update() {
    for (int i = particulas.size() - 1; i >= 0; i--) {
      Particula p = particulas.get(i);
      p.update();
      if (p.isDead()) {
        particulas.remove(i);
      }
    }
  }

  void display() {
    for (Particula p : particulas) {
      p.display();
    }
  }
}
