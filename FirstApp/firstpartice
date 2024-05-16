import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('first App'),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  children: [
                    Icon(Icons.account_circle_rounded),
                    Icon(Icons.account_circle_rounded),
                    Icon(Icons.account_circle_rounded),
                  ],
                ),
              ),
              Container(
                child: Column(
                    children: [
                      Text('사람1'),
                      Text('사람2'),
                      Text('사람3'),
                    ]
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.call),
              Icon(Icons.message),
              Icon(Icons.document_scanner_sharp),
            ],
          ),
        ),
      ),
    );
  }
}
