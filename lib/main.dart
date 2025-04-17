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
    ),
    
    listTileTheme: ListTileThemeData(
      
      tileColor: const Color.fromARGB(255, 179, 206, 220),
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
),

    ),
    
floatingActionButtonTheme: FloatingActionButtonThemeData(
  backgroundColor: Colors.blueGrey,
  iconSize: 25,

)

  ),
  home: Home(),
));


