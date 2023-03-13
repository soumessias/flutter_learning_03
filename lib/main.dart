import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receitas',
      theme: ThemeData(
          primarySwatch: Colors.red,
          secondaryHeaderColor: Colors.redAccent,
          textTheme: ThemeData.light().textTheme.copyWith(
                titleMedium: TextStyle(
                    fontSize: 20,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold),
              )),
      home: CategoriesScreen(),
    );
  }
}
