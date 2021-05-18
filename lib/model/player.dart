import 'game.dart';

enum PlayerSign { ZERO, CROSS }

class Player {
  PlayerSign sign;
  Player({this.sign = PlayerSign.ZERO});

  Game makeTurn(Game game, List<int> cell) {
    int row = cell[0];
    int col = cell[1];
    if (game.board[row][col] == -1) {
      this.sign == PlayerSign.ZERO
          ? game.board[row][col] = 0
          : game.board[row][col] = 1;
      game.turn += 1;
      return game;
    } else {
      throw Exception(['Empty field cell required to make a turn']);
    }
  }
}
