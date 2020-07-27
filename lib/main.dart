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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        
        //"MainAxisAlignment" Row ki property hai....row ko align krne ke liye.. Try=> "MainAxisAlign.spacebetween" "MainAxisAlign.spacearound" "MainAxisAlign.spaceevenly"
        
        crossAxisAlignment: CrossAxisAlignment.start,
        //ye upar wale ka opposite hoga...mtlb vertical show krega boxes ko...lekin abhi uske liye upar ke  body: Center ko htana padega...center pe "ctrl + ." press krke "remove this widget" ko press kro
        // Try=> "CrossAxisAlignment.stretch"
       
       //lekin agr Row ko column krenge to sahi se nhi hoga...uske liye mediaquery use krenge=>>

    //  body: Container(  child: Row(
    // mainAxisAlignment: MainAxisAlignment.       center, 
    // crossAxisAlignment: CrossAxisAlignment.start,
    // width:MediaQuery.of(context).size.width
     // height:MediaQuery.of(context).size.height

      //Agr "height:MediaQuery.of(context).size.height/2" krenge to wo half space lega 
      
      // container ke upar "ctrl + ." press krke "Wrap with padding" krenge to wo saare items ko...jo container ke andar hai unko paading de dega" Try Alignment too
       
       
       
       
       
       
       
        children: <Widget>[
        Container(
        padding: const EdgeInsets.all(8),
        width: 100,
        height: 100,
        color: Colors.green,
     
      ),
       
       Container(
        padding: const EdgeInsets.all(8),
        width: 100,
        height: 100,
        color: Colors.yellow,
      ),
       
       Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal,
        width: 100,
        height: 100,
      ),
        ],
      ),   
    );
  }
}