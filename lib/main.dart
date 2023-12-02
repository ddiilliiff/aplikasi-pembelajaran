import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/belajar_angka.dart';
import 'pages/belajar_huruf.dart';
import 'pages/home_screen.dart';
import 'pages/kuis.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pembelajaran',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => HomeScreen(),
        '/huruf' : (context) => const BelajarHuruf(),
        '/angka' : (context) => const BelajarAngka(),
        '/kuis' : (context) => const Kuis(),
      },
    );
  }
}
