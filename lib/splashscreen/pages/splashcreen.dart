import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newsapp/pages/newsapp.dart';
import 'package:newsapp/splashscreen/widgets/splash_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _loadAndMove() {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (builder) => NewsApp()));
    });
  }

  @override
  void initState() {
    super.initState();
    _loadAndMove();
  }

  @override
  Widget build(BuildContext context) {
    return SplashWidget();
  }
}
