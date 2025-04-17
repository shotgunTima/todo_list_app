import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blueGrey,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blueGrey,
      titleTextStyle: TextStyle(
        fontFamily: 'Ubuntu',
        fontSize: 25,
      )
    ),
    
floatingActionButtonTheme: FloatingActionButtonThemeData(
  backgroundColor: Colors.blueGrey,
  iconSize: 25,

)

  ),
  home: Home(),
));


