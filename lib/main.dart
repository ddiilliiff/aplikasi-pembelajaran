import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  // Membuat instansiasi Game
  runApp(GameWidget(game: MyApp()));
}

class MyApp extends FlameGame {}
