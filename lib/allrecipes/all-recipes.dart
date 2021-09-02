import 'package:all_my_recipes/addrecipe/add-recipe-page.dart';
import 'package:flutter/material.dart';

class AllRecipesPage extends StatefulWidget {
  AllRecipesPage({Key? key}) : super(key: key);

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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('All Recipes'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/allrecipes');
              },
            ),
            ListTile(
              title: const Text('Add Recipes'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/addrecipe');
              },
            ),
            ListTile(
              title: const Text('Shopping List'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/shoppinglist');
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            height: 50,
            child: Text('Korean Fried Chicken'),
          ),
          Container(
            padding: EdgeInsets.all(8),
            height: 50,
            child: Text('Curry Soy Glass Noodles'),
          ),
          Container(
            padding: EdgeInsets.all(8),
            height: 50,
            child: Text('Flan'),
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
