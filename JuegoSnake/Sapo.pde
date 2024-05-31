class Sapo extends Animal {
  public Sapo(float x, float y, float alto, float ancho) {
    super(x, y, alto, ancho);
    posicion = new PVector(random(width), random(height));
  }
  public void display() {
    fill(0, 255, 0);
    ellipse(posicion.x, posicion.y, ancho, alto);
  }
}
