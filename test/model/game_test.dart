import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tac_toe/model/game.dart';

void main() {
  test('Initializes empty game field', () {
    Game game = Game.atStart();
    expect(game.board, [
      [-1, -1, -1],
      [-1, -1, -1],
      [-1, -1, -1]
    ]);
  });
  test('Initializes field on turn 0', () {
    Game game = Game.atStart();
    expect(game.turn, 0);
  });

  test('When a winning column is present, returns hasWin: true', () {});
}
