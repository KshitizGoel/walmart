import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:walmart/HomePageScreen.dart';

import 'RegisterPage.dart';

//Backend work to be done later on

class LoginPageScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return LoginPageScreenState();
  }

}

class LoginPageScreenState extends State<LoginPageScreen>{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
   return Scaffold(

     appBar: AppBar(
       centerTitle: true,
       title: Text(
         "Welcome to Walmart",
         style: TextStyle(
             fontWeight: FontWeight.bold,
             color: Colors.black,
           fontSize: 30
         ),
       ),
     ),

     body:ListView(

         children: <Widget>[


         Padding(
           padding: EdgeInsets.all(5.0),
           child:  getImageAsset(),

         ),

           Padding(

             padding: EdgeInsets.only(top:10.0, bottom: 10.0, left: 50.0),
             child: Text(
               "Sign in to your Walmart account ",
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20.0,
                 color: Colors.black
               ),
             ),

           ),

           Padding(
             padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20.0, top: 20.0),

             child: TextFormField(

              decoration: InputDecoration(
                labelText: "Username",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,

                ),
                prefixIcon: Icon(
                  Icons.account_box,
                  color: Colors.blue,
                )
              ),

             ) ,

           ),

           Padding(
             padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0),

             child: TextFormField(

               obscureText: true,

              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.blue,
                )
              ),

             ) ,

           ),

           Padding(
             padding: EdgeInsets.only(left:20.0, right: 20.0, bottom: 20.0, top: 50.0),

             child: ButtonTheme(

                height: 50.0,

               child: RaisedButton(
                onPressed: (){
                  //Used in backend for logging in authentically..
                  
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomePageScreen(),
                  ));
                  
                },
                child: Column(
                 children: <Widget>[

                    Icon(
                          Icons.details,
                          color:Colors.white
                    ),

                    Text(
                        "Sign In",
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                 )

              ],
           ),
                  shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(25.0),

             ),

                   ),
              )
           ),


           Padding(

             padding: EdgeInsets.only(top:20.0, left: 100.0),
             child: Text(
               "Don't have an account?",

                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.black,
                     fontSize: 18.0
                   ),

             ),

           ),

           Padding(
               padding: EdgeInsets.only(left:20.0, right: 20.0, bottom: 20.0, top: 15.0),

               child: ButtonTheme(

                 height: 50.0,

                 child: RaisedButton(
                   onPressed: (){
                     //Used in backend for registering in authentically..

                     Navigator.push(context, MaterialPageRoute(
                       builder: (context) => RegisterPage(),
                     ));

                   },
                   child: Column(
                     children: <Widget>[

                       Icon(
                           Icons.account_circle,
                           color:Colors.black
                       ),

                       Text(
                         "Create account",
                         style: TextStyle(
                             fontWeight: FontWeight.bold,
                             color: Colors.black
                         ),
                       )

                     ],
                   ),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(25.0),

                   ),
                   color: Colors.white,
                 ),
               )
           ),

         ],

       ),

   );
  }

}
class getImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("image/loginlogo.png");
    Image image = Image(image: assetImage);

    return Container(
      child: image,
    );
  }
}