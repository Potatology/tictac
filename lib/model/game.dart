class Game {
  var field;
  var turn;

  Game({this.field, this.turn});

  factory Game.atStart() {
    return Game(
      field: [
        [-1, -1, -1],
        [-1, -1, -1],
        [-1, -1, -1]
      ],
      turn: 0,
    );
  }
}
