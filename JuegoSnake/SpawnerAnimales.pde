class SpawnerAnimales {
  private ArrayList<Animal> animales;
  public SpawnerAnimales() {
    animales = new ArrayList<Animal>();
  }
  public void generarAnimal() {
    float x = random(width);
    float y = random(height);
    int tipoAnimal = int(random(3));
    Animal animal;
    switch (tipoAnimal) {
      case 0:
        animal = new Ardilla(x, y, 20, 20);
        break;
      case 1:
        animal = new Sapo(x, y, 20, 20);
        break;
      case 2:
        animal = new Cerdo(x, y, 20, 20);
        break;
      default:
        animal = new Ardilla(x, y, 20, 20);
        break;
    }
    animales.add(animal);
  }
  public void display() {
    for (Animal animal : animales) {
      animal.display();
    }
  }
}
