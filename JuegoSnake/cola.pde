class Cola extends Snake {
  public Cola(float x, float y, float tamaño, float velocidad) {
    super(x, y, tamaño, velocidad);
  }
  public void display() {
    fill(0);
    rect(posicion.x, posicion.y, tamaño, tamaño);
  }
  public void mover() {
    posicion.x += velocidad;
    posicion.y += velocidad;
  }
}
