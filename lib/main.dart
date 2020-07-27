import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App", // Ye title minimize krne pe dikhta hai
    home: HomePage;
    theme: ThemeData(
     primarySwatch: Colors.purple  // Upar ka Navbar Ka color change ho jaega
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // DrawerHeader(child: Text("Hi, I am drawer", style: TextStyle(color: Colors.white),),
            // decoration: BoxDecoration(color: Colors.purpleAccent),
             
            // ),

           UserAccountsDrawerHeader(
             accountName: Text("Sannidhya Kushwaha"), accountEmail:Text("sannidhyakushwaha@gmail.com"),  
           currentAccountPicture: Image.network("https://images.unsplash.com/photo-1533512930330-4ac257c86793?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
           ),
           // lekin agr is pic ko circle me krna hai to....=> currentAccountPicture : CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1533512930330-4ac257c86793?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),),
           ),

            ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"), 
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
            ),
            
            ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("sannidhyakushwaha@gmail.com"),
            trailing: Icon(Icons.send),
            ),
          ],
        ),
         ), 
      floatingActionButton: FloatingActionButton(onPressed: () {},
      child: Icon(Icons.edit),
      ), 
       );
  }
}