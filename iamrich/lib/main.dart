import 'package:flutter/material.dart';

void main() {
  runApp(const IAmRich());
}

class IAmRich extends StatelessWidget {
  const IAmRich({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text(
            "I AM RICH",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Image(
              width: 200, image: AssetImage('assets/images/diamond-stone.jpg')),
        ),
      ),
    );
  }
}
