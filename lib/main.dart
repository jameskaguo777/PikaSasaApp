import 'package:flutter/material.dart';
import 'package:pika_sasa_app/pages/home_page.dart';
import 'package:pika_sasa_app/pages/recipe_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pika Sasa App',
      theme: ThemeData(
        
        primarySwatch: Colors.amber,
        accentColor: Colors.brown,
        backgroundColor: Colors.blueGrey[50],
        cardColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        iconTheme: IconThemeData.fallback()
      ),
      // home: HomePage(),  Don't define this prop when using initalRoute prop.
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'recipe': (context) => RecipePage(),
      },
    );
  }
}


