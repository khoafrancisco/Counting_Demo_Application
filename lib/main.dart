import 'package:flutter/material.dart';
import 'MySecondPage.dart';

void main() {
  runApp(MaterialApp(
    home: Page1(),
  ));
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CountingApp()),
            );
          },
          child: Text('Next to Counting Application Demo'),
        ),
      ),
    );
  }
}
