import 'package:flutter/material.dart';

class AddRecipePage extends StatefulWidget {
  AddRecipePage({Key? key}) : super(key: key);

  @override
  _AddRecipePageState createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Recipe'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            color: Colors.grey[500],
            child: const Center(child: Text('Image Placeholder')),
          ),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Recipe name',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the name of this recipe';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: Text(
                      'Ingredients',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'amount (whitespace) ingredient',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter at least one ingredient';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'amount (whitespace) ingredient',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter at least one ingredient';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: Text(
                      'Time',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'e.g. 1h 23min',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please the (estimated) time of this recipe';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: Text(
                      'Description',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Description of this recipe',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please the description of this recipe';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState!.validate()) {
                        // Process data.
                      }
                    },
                    child: const Text('SAVE RECIPE'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
