import 'package:flutter/material.dart';
import 'package:newsapp/pages/newsapp.dart';
import 'package:newsapp/splashscreen/pages/splashcreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(), // home: SafeArea(child: Text("Hello")),
  ));
}
