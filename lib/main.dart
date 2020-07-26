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
      body: Center(
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment:Alignment.center,
        color: Colors.teal,
        width: 100,
        height: 100,
        decoration: BoxDecoration(
         // shape: BoxShape.circle,
         // circle kr skte hain ya fir rectangle hi rehne de skte hain as aacording to height and width we set earlier
         //but agr rectagle me Border-Radius dena hai to..niche
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              ColorColors.grey[400], 
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(2.0, 5.0)
            )
          ],
          color: Colors.teal,
          gradient: LinearGradient(colors: [
            Colors.red,
            Colors.pink
          ])
        ), //Alag se color likhte hain to error dega. Color dena hai to decoration ke andar do. Agr bahar dena hai to decoration mt do
         //Gradient me array[] ka use multiple colors likhne ke iye krte hain 
        child: Text("I am a Box", 
        textAlign: TextAlign.center, 
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold, 
          fontSize: 20
          ),
          ),
      ),   
      ),   
    );
  }
}