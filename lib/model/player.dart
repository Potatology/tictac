import 'game.dart';

enum PlayerSign { ZERO, CROSS }

class Player {
  PlayerSign sign;
  Player({this.sign = PlayerSign.ZERO});

  Game makeTurn(Game game, List<int> rowColumn) {
    int row = rowColumn[0];
    int col = rowColumn[1];
    if (game.field[row][col] == -1) {
      this.sign == PlayerSign.ZERO
          ? game.field[row][col] = 0
          : game.field[row][col] = 1;
      game.turn += 1;
      return game;
    } else {
      throw Exception(['Empty field cell required to make a turn']);
    }
  }
}
