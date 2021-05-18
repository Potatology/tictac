import 'package:flutter_test/flutter_test.dart';
import 'package:tac_toe/model/game.dart';
import 'package:tac_toe/model/player.dart';

void main() {
  test('Initializes player with a cross sign', () {
    Player playerCross = Player(sign: PlayerSign.CROSS);
    expect(playerCross.sign, PlayerSign.CROSS);
  });
  test('When turn is made, field value is changed to 0 when player is of type0',
      () {
    Game game = Game.atStart();
    Player player = Player();
    List<int> targetCell = [0, 1];
    player.makeTurn(game, targetCell);
    expect(game.board[targetCell[0]][targetCell[1]], 0);
  });
  test('When turn is made, field value is changed to 1 when player CROSS', () {
    Game game = Game.atStart();
    Player player = Player(sign: PlayerSign.CROSS);
    List<int> targetCell = [0, 1];
    player.makeTurn(game, targetCell);
    expect(game.board[targetCell[0]][targetCell[1]], 1);
  });
  test('Throws exception on attempt to reuse field cell when making turn', () {
    Game game = Game.atStart();
    Player player = Player(sign: PlayerSign.CROSS);
    List<int> targetCell = [0, 1];
    game.board[targetCell[0]][targetCell[1]] = 0;
    expect(() => player.makeTurn(game, targetCell), throwsException);
  });
  test('Throws exception on attempt to reuse field cell when making turn', () {
    Game game = Game.atStart();
    Player player = Player(sign: PlayerSign.ZERO);
    List<int> targetCell = [0, 1];
    game.board[targetCell[0]][targetCell[1]] = 1;
    expect(() => player.makeTurn(game, targetCell), throwsException);
  });
  test('Game turn counter increments when turn is made', () {
    Game game = Game.atStart();
    Player player = Player(sign: PlayerSign.ZERO);
    List<int> targetCell = [0, 1];
    int row = targetCell[0];
    int col = targetCell[1];
    player.makeTurn(game, [row, col]);
    expect(game.turn, 1);
  });
}
