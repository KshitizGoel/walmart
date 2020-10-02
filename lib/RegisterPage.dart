import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Backend work to be done later on!

class RegisterPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
   return RegisterPageState();
  }

}

class RegisterPageState extends State<RegisterPage>{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
  return  Scaffold(
    appBar: AppBar(
      centerTitle: true,

      title: Text(
        "Registration"
      ),
    ),
    body: Form(

      child: ListView(

        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20.0, top: 20.0),

            child: TextFormField(

              decoration: InputDecoration(
                  labelText: "Full Name",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,

                  ),

              ),

            ) ,

          ),

          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0),

            child: TextFormField(

              keyboardType: TextInputType.number ,
              obscureText: true,

              decoration: InputDecoration(
                  labelText: "Contact Number",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),

              ),

            ) ,

          ),

          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20.0, top: 20.0),

            child: TextFormField(

              decoration: InputDecoration(
                  labelText: "Username",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,

                  ),

              ),

            ) ,

          ),

          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0),

            child: TextFormField(

              decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),

              ),

            ) ,

          ),

          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),

            child: TextFormField(

              obscureText: true,

              decoration: InputDecoration(
                labelText: "Confirm Password",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),

              ),

            ) ,

          ),

          Padding(
              padding: EdgeInsets.only(left:20.0, right: 20.0, bottom: 20.0, top: 35.0),

              child: ButtonTheme(

                height: 50.0,

                child: RaisedButton(
                  onPressed: (){
                    //Used in backend for registering in authentically..




                  },
                  child: Column(
                    children: <Widget>[

                      Icon(
                          Icons.account_circle,
                          color:Colors.black
                      ),

                      Text(
                        "Register",
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

    ),

  );
  }



}