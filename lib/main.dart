import 'package:dsc_task5/toolsImages.dart';

import 'pages/loginScraeen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      checkerboardOffscreenLayers: true,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(ToolsImage.nColor),
        ),
      ),
      home: LogInScreen(),
    );
  }
}
