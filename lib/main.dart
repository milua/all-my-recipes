import 'package:all_my_recipes/addrecipe/add-recipe-page.dart';
import 'package:all_my_recipes/allrecipes/all-recipes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'All My Recipes',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: AllRecipesPage(),
        routes: {
          '/allrecipes': (context) => AllRecipesPage(),
          '/addrecipe': (context) => AddRecipePage(),
        });
  }
}
