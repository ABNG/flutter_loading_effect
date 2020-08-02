import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(MyApp());
}

//https://www.youtube.com/watch?v=EVO5958KU8o&t=470s  watch this video
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Shimmer.fromColors(
          baseColor: Colors.grey[500],
          highlightColor: Colors.white,
          child: Text(
            "slide to unlock >",
            textScaleFactor: 2.5,
          ),
        ),
      ),
    );
  }
}
