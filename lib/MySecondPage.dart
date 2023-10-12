import 'package:flutter/material.dart';

class CountingApp extends StatefulWidget {
  @override
  _CountingAppState createState() => _CountingAppState();
}

class _CountingAppState extends State<CountingApp> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application Counting'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Count:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$_count',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _incrementCount,
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _decrementCount,
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
