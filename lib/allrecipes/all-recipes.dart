import 'dart:io';

import 'package:all_my_recipes/addrecipe/add-recipe-page.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class AllRecipesPage extends StatefulWidget {
  AllRecipesPage({Key? key}) : super(key: key);

  @override
  _AllRecipesPageState createState() => _AllRecipesPageState();
}

class _AllRecipesPageState extends State<AllRecipesPage> {
  String data = '';

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    // For your reference print the AppDoc directory
    print(directory.path);
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/data.txt');
  }

  Future<File> writeContent() async {
    final file = await _localFile;
    // Write the file
    return file.writeAsString('Hello Folks');
  }

  Future<String> readcontent() async {
    try {
      final file = await _localFile;
      // Read the file
      String contents = await file.readAsString();
      return contents;
    } catch (e) {
      // If there is an error reading, return a default String
      return 'Error';
    }
  }

  @override
  void initState() {
    super.initState();
    writeContent();
    readcontent().then((String value) {
      setState(() {
        data = value;
      });
    });
  }

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
            child: Text('Data read from a file: $data'),
          ),
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
