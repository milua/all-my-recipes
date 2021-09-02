import 'package:flutter/material.dart';

class AddRecipePage extends StatefulWidget {
  AddRecipePage({Key key}) : super(key: key);

  @override
  _AddRecipePageState createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Recipe'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('TEST')),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('TEST B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('TEST C')),
          ),
        ],
      ),

    );
  }
}
