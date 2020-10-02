import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'ProductsPage.dart';
import 'MapsPage.dart';
class HomePageScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return HomePageScreenState();
  }

}

class HomePageScreenState extends State<HomePageScreen>{


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
             "Hi there! Where do you want to shop?",
             style: TextStyle(
               fontSize: 18.0,
               fontWeight: FontWeight.bold,
               color: Colors.black
             ),
           ),
         ),


         GestureDetector(

           child:  Padding(
             padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 20.0 , bottom: 5.0),
             child: Card(
               elevation: 10,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20.0),
               ),
               child:Container(


                   decoration: BoxDecoration(
                       color: Colors.white54,

                       borderRadius: BorderRadius.circular(20) // use instead of BorderRadius.all(Radius.circular(20))
                   ),

                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,

                     children: <Widget>[

                       Padding(
                         padding: EdgeInsets.only(top:10.0, left: 120.0, right: 20.0),

                         child: Text(
                           "Online Store",

                           style: TextStyle(

                               fontWeight: FontWeight.bold,
                               fontSize: 25.0,
                               color: Colors.black
                           ),
                         ),

                       ),
                       Padding(
                         padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
                         child:  getImageAsset(),

                       ),




                     ],

                   )


               ),


             ),


           ),

           onTap: (){
             Navigator.push(context, MaterialPageRoute(

               builder: (context) => ProductsPage(),

             ));
           },

         ),

         GestureDetector(

           child: Padding(
             padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 20.0 , bottom: 5.0),
             child: Card(
               elevation: 10,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20.0),
               ),
               child:Container(


                   decoration: BoxDecoration(
                       color: Colors.white54,

                       borderRadius: BorderRadius.circular(20) // use instead of BorderRadius.all(Radius.circular(20))
                   ),

                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,

                     children: <Widget>[

                       Padding(
                         padding: EdgeInsets.only(top:10.0, left: 50.0, right: 20.0),

                         child: Text(
                           "Find a Walmart store near you",

                           style: TextStyle(

                               fontWeight: FontWeight.bold,
                               fontSize: 20.0,
                               color: Colors.black
                           ),
                         ),

                       ),
                       Padding(
                         padding: EdgeInsets.all(20.0),
                         child:  getAnotherImageAsset(),

                       ),




                     ],

                   )


               ),


             ),


           ) ,

           onTap: (){

             Navigator.push(context, MaterialPageRoute(
               builder: (context) => MapsPage()
             ));

           },

         ),



       ],

     ),

   );
  }

}

class getImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("image/onlineStores.gif");
    Image image = Image(
        image: assetImage);

    return Container(
      child: image,
      width: 400,
      height: 200,
    );
  }
}

class getAnotherImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("image/offlineStores.jpg");
    Image image = Image(
        image: assetImage);

    return Container(
      child: image,
      width: 400,
      height: 200,
    );
  }
}