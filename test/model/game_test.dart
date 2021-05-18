import 'package:flutter_test/flutter_test.dart';
import 'package:tac_toe/model/game.dart';

void main() {
  test('Initializes empty game field', () {
    Game gameField = Game.atStart();
    expect(gameField.board, [
      [-1, -1, -1],
      [-1, -1, -1],
      [-1, -1, -1]
    ]);
  });
  test('Initializes field on turn 0', () {
    Game gameField = Game.atStart();
    expect(gameField.turn, 0);
  });
}
