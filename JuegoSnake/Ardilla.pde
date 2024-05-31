class Ardilla extends Animal {
  public Ardilla(float x, float y, float alto, float ancho) {
    super(x, y, alto, ancho);
    posicion = new PVector(random(width), random(height));
  }
  public void display() {
    fill(139, 69, 19);
    ellipse(posicion.x, posicion.y, ancho, alto);
  }
}
