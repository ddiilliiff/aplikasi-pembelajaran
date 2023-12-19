import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  // Membuat instansiasi Game
  runApp(GameWidget(game: MyApp()));
}

class MyApp extends FlameGame {
  SpriteComponent backgroud = SpriteComponent();
  @override
  Future<void> onLoad() async {
    super.onLoad();

    backgroud
      ..sprite = await loadSprite('background/1.png')
      ..size = Vector2(732, 412);
    add(backgroud);
  }
}
