import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StatelessWidget',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Labels'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                stl('label 1'),
                SizedBox(height: 8.0),
                Text("Text widget"),
                SizedBox(height: 8.0),
                stl('label 2')
              ],
            ),
          )),
    );
  }
}

class stl extends StatelessWidget {
  final String text;

  const stl(this.text);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.amber[700]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.grey[700]),
        ),
      ),
    );
  }
}