import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App", // Ye title minimize krne pe dikhta hai
    home: HomePage;
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Container(
        child: Text("Hi Flutter"), //Text ke upar ctrl + . press krke text ko center erc align kr skte hain
      ),
    );
  }
}