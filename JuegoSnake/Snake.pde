class Snake extends GameObject {
  private PVector cabezaPosicion;
  protected float tamaño;
  protected float velocidad;
  private ArrayList<Animal> cuerpo;
  public Snake(float x, float y, float tamaño, float velocidad) {
    super(x, y, 0, 0);
    cabezaPosicion = new PVector(x, y);
    this.tamaño = tamaño;
    this.velocidad = velocidad;
    cuerpo = new ArrayList<Animal>();
  }
  public PVector getCabezaPosicion() {
    return cabezaPosicion;
  }
  public ArrayList<Animal> getCuerpo() {
    return cuerpo;
  }
  public void display() {
    fill(0);
    rect(cabezaPosicion.x, cabezaPosicion.y, tamaño, tamaño);
    for (Animal segmento : cuerpo) {
      segmento.display();
    }
  }
  public void mover(float mouseX, float mouseY) {
    cabezaPosicion.x = mouseX;
    cabezaPosicion.y = mouseY;
      if (cabezaPosicion.x < 0 || cabezaPosicion.x > width || cabezaPosicion.y < 0 || cabezaPosicion.y > height) {
    gameOver();
  }
    for (Animal segmento : cuerpo) {
    }
  }
  public boolean chocar() {
    if (cabezaPosicion.x < 0 || cabezaPosicion.x > width || cabezaPosicion.y < 0 || cabezaPosicion.y > height) {
      return true;
    }
    for (Animal segmento : cuerpo) {
      if (cabezaPosicion.equals(segmento.getPosicion())) {
        return true;
      }
    }
    return false;
  }
  public boolean comer(Animal animal) {
    PVector cabezaPosicion = getCabezaPosicion();
    PVector animalPosicion = animal.getPosicion();
    float distancia = PVector.dist(cabezaPosicion, animalPosicion);
    if (distancia < tamaño) {
      cuerpo.add(animal);
      return true;
    }
    return false;
  }
  public void crecer() {
    tamaño += 1;
  }
}
