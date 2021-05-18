class Game {
  var board;
  var turn;

  Game({this.board, this.turn});

  factory Game.atStart() {
    return Game(
      board: [
        [-1, -1, -1],
        [-1, -1, -1],
        [-1, -1, -1]
      ],
      turn: 0,
    );
  }
}
