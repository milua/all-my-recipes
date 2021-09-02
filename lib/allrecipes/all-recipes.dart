import 'package:all_my_recipes/addrecipe/add-recipe-page.dart';
import 'package:flutter/material.dart';

class AllRecipesPage extends StatefulWidget {
  AllRecipesPage({Key key}) : super(key: key);

  @override
  _AllRecipesPageState createState() => _AllRecipesPageState();
}

class _AllRecipesPageState extends State<AllRecipesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Recipe'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Korean Fried Chicken')),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Curry Soy Glass Noodles')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Flan')),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddRecipePage()),
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}
