ArrayList<Animal> animales;
Escenario escenario;
Snake snake;
SpawnerAnimales spawner;
ArrayList<Animal> animalesComidos;
public void setup() {
  size(1024, 600);
  animales = new ArrayList<Animal>();
  escenario = new Escenario();
  snake = new Snake(width / 2, height / 2, 20, 20);
  spawner = new SpawnerAnimales();
  animalesComidos = new ArrayList<Animal>();
}
public void draw() {
  escenario.display();
  snake.display();
  spawner.display();
  for (Animal animal : animalesComidos) {
    animal.display();
  }
  snake.mover(mouseX, mouseY);
  if (snake.chocar()) {
    gameOver();
  }
  for (int i = 0; i < spawner.animales.size(); i++) {
    Animal animal = spawner.animales.get(i);
    animal.display();
    if (snake.comer(animal)) {
      spawner.animales.remove(i);
      snake.crecer();
      animalesComidos.add(animal);
    }
  }
  if (spawner.animales.size() < 5 && frameCount % 60 == 0) {
    spawner.generarAnimal();
  }
}
void gameOver() {
  println("¡Juego terminado!");
  noLoop();
}
