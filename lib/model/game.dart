class Game {
  List board;
  int turn;

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

  bool hasWin(List<int> line) {
    return line.toSet().length > 1 ? false : true;
  }
}
