class Cerdo extends Animal {
  public Cerdo(float x, float y, float alto, float ancho) {
    super(x, y, alto, ancho);
    posicion = new PVector(random(width), random(height));
  }
  public void display() {
    fill(255, 182, 193);
    rect(posicion.x, posicion.y, ancho, alto);
  }
}  
