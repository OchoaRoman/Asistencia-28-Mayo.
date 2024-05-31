class GameObject implements IDisplayable {
  protected PVector posicion;
  protected PVector velocidad;
  protected float alto;
  protected float ancho;
  public GameObject(float x, float y, float alto, float ancho) {
    posicion = new PVector(x, y);
    velocidad = new PVector(0, 0);
    this.alto = alto;
    this.ancho = ancho;
  }
  public void display() {
    rect(posicion.x, posicion.y, ancho, alto);
  }
  public void setPosicion(float x, float y) {
    posicion.x = x;
    posicion.y = y;
  }
}
