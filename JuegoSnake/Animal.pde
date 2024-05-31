class Animal {
  protected PVector posicion;
  protected float ancho;
  protected float alto;
  public Animal(float x, float y, float alto, float ancho) {
    posicion = new PVector(x, y);
    this.alto = alto;
    this.ancho = ancho;
  }
  public PVector getPosicion() {
    return posicion;
  }
  public void display() {
    fill(255, 0, 0);
    rect(posicion.x, posicion.y, ancho, alto);
}
