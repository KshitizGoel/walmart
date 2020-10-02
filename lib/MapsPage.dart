import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MapsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return MapsPageState();
  }

}

class MapsPageState extends State<MapsPage>{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
   return Scaffold(

     appBar:AppBar(
       centerTitle: true,
       backgroundColor: Colors.white,
       elevation: 0.0,
       title:  Image.asset('image/otherlogo.png',
         fit:BoxFit.cover,
         height:80.00,
       ),
     ),
     body: ListView(

       children: <Widget>[

         Padding(
           padding: EdgeInsets.all(20.0),

           child: Text(

             "Stores near me",

             style:  TextStyle(

                 fontWeight: FontWeight.bold,
                 fontSize: 20.0,
                 color: Colors.blueGrey

             ),

           ),

         )

       ],


     ),

   );
  }

}