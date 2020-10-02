import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductsPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
   return ProductsPageState();
  }

}
class ProductsPageState extends State<ProductsPage>{
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

             "Products",

             style:  TextStyle(

               fontWeight: FontWeight.bold,
               fontSize: 20.0,
               color: Colors.blueGrey

             ),

           ),

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
                           "Clothes",

                           style: TextStyle(

                               fontWeight: FontWeight.bold,
                               fontSize: 20.0,
                               color: Colors.black
                           ),
                         ),

                       ),
                       Padding(
                         padding: EdgeInsets.all(20.0),
                         child:  getImageAsset(),

                       ),




                     ],

                   )


               ),


             ),


           ) ,
           onTap: (){},
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
                           "Gaming Stations",

                           style: TextStyle(

                               fontWeight: FontWeight.bold,
                               fontSize: 20.0,
                               color: Colors.black
                           ),
                         ),

                       ),
                       Padding(
                         padding: EdgeInsets.all(20.0),
                         child:  getSecondImageAsset(),

                       ),

                     ],

                   )


               ),


             ),


           ) ,

           onTap: (){
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
                           "Shoes",

                           style: TextStyle(

                               fontWeight: FontWeight.bold,
                               fontSize: 20.0,
                               color: Colors.black
                           ),
                         ),

                       ),
                       Padding(
                         padding: EdgeInsets.all(20.0),
                         child:  getThirdImageAsset(),

                       ),




                     ],

                   )


               ),


             ),


           ) ,

           onTap: (){
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
                           "Headphones",

                           style: TextStyle(

                               fontWeight: FontWeight.bold,
                               fontSize: 20.0,
                               color: Colors.black
                           ),
                         ),

                       ),
                       Padding(
                         padding: EdgeInsets.all(20.0),
                         child:  getFourthImageAsset(),

                       ),




                     ],

                   )


               ),


             ),


           ) ,

           onTap: (){},

         ),



       ],


     ),

   );
  }

}

class getImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("image/shirts.jpg");
    Image image = Image(
        image: assetImage);

    return Container(
      child: image,
      width: 400,
      height: 200,
    );
  }
}

class getSecondImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("image/gamingStations.jpeg");
    Image image = Image(
        image: assetImage);

    return Container(
      child: image,
      width: 400,
      height: 200,
    );
  }
}

class getThirdImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("image/shoes.jpg");
    Image image = Image(
        image: assetImage);

    return Container(
      child: image,
      width: 400,
      height: 200,
    );
  }
}

class getFourthImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("image/headphones.jpg");
    Image image = Image(
        image: assetImage);

    return Container(
      child: image,
      width: 400,
      height: 200,
    );
  }
}
