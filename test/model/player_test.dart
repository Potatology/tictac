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
    List<int> targetRawColumn = [0, 1];
    player.makeTurn(game, targetRawColumn);
    expect(game.field[targetRawColumn[0]][targetRawColumn[1]], 0);
  });
  test('When turn is made, field value is changed to 1 when player CROSS', () {
    Game game = Game.atStart();
    Player player = Player(sign: PlayerSign.CROSS);
    List<int> targetRawColumn = [0, 1];
    player.makeTurn(game, targetRawColumn);
    expect(game.field[targetRawColumn[0]][targetRawColumn[1]], 1);
  });
  test('Throws exception on attempt to reuse field cell when making turn', () {
    Game game = Game.atStart();
    Player player = Player(sign: PlayerSign.CROSS);
    List<int> targetRawColumn = [0, 1];
    game.field[targetRawColumn[0]][targetRawColumn[1]] = 0;
    expect(() => player.makeTurn(game, targetRawColumn), throwsException);
  });
  test('Throws exception on attempt to reuse field cell when making turn', () {
    Game game = Game.atStart();
    Player player = Player(sign: PlayerSign.ZERO);
    List<int> targetRawColumn = [0, 1];
    game.field[targetRawColumn[0]][targetRawColumn[1]] = 1;
    expect(() => player.makeTurn(game, targetRawColumn), throwsException);
  });
}
