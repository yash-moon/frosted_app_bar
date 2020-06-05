import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frosted_app_bar/frostedAppBar.dart';
import 'package:frosted_app_bar/imagesList.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // to hide the status bar
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            // this is just a scrollview with a list of images ..
            ImageList(),
            //
            //Custom App Bar (frosted)
            FrostedAppBar(
              blurStrengthX: 20,
              blurStrengthY: 20,
              title: Center(
                child: Text(
                  'Frosted App Bar',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
