import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Counter',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: Scaffold(
          backgroundColor: Colors.amber,
          appBar: AppBar(
            title: Text('Counter'),
          ),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  stl('Tab to - decrement'),
                  SizedBox(height: 8.0),
                  STFF(),
                  SizedBox(height: 8.0),
                  stl('Tob to + to increment')
                ]),
          ),
        ));
  }
}

class STFF extends StatefulWidget {
  const STFF({Key? key}) : super(key: key);

  @override
  State<STFF> createState() => _STFFState();
}

class _STFFState extends State<STFF> {
  int _count = 42;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: Colors.amber[600]),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                _decrement();
              },
              icon: Icon(Icons.remove)),
          Text(
            '$_count',
            style: TextStyle(fontSize: 20.0),
          ),
          IconButton(
              onPressed: () {
                _increment();
              },
              icon: Icon(Icons.add)),
        ],
      ),
    );
  }

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      _count--;
    });
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
