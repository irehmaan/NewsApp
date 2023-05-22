import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});
  final url =
      'https://static.wikia.nocookie.net/dccu/images/a/a5/Daily_Planet_logo_by_Jason_Sweers.png/revision/latest?cb=20210217054216';
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(children: <Widget>[
          Container(
            width: media.width,
            height: media.height,
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(image: NetworkImage(url))),
          ),
          Transform.scale(
            scale: 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  heightFactor: 5,
                  child: CircularProgressIndicator(
                    color: Colors.blueGrey,
                  ),
                ),
                Text(
                  "Curated For You",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
