import 'package:flutter/material.dart';
import 'package:todo_list_app/pages/home.dart';

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
  backgroundColor: const Color.fromARGB(255, 211, 14, 0),
  iconSize: 25,

)

  ),
  home: Home(),
));


