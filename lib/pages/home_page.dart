import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Its my first demo APP"),
        ),
        body: Center(
          child: Container(
            child: Text("Hello"),
          ),
        ),
      ),
    );
  }
}
