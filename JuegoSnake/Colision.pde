class Colision {
  public boolean verificarColision(Snake snake) {
    PVector cabezaPosicion = snake.getCabezaPosicion();
    ArrayList<Animal> cuerpo = snake.getCuerpo();
    for (int i = 1; i < cuerpo.size(); i++) {
      PVector segmentoPosicion = cuerpo.get(i).getPosicion();
      if (cabezaPosicion.equals(segmentoPosicion)) {
        return true;
      }
    }
    return false;
  }
}
