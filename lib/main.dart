import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rnaeaa/ui/play.dart';
import 'package:rnaeaa/ui/animation.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Word Game',
    home: Main_menu(),
  ));
}




// ignore: camel_case_types
class Main_menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   SystemChrome.setEnabledSystemUIOverlays([]);

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return new Scaffold(
     body: new Stack(
       fit: StackFit.expand,
       children: <Widget>[
       new Image(
         image: new AssetImage("images/wall4.jpg"),
         fit: BoxFit.cover,
         color: Colors.black38,
         colorBlendMode: BlendMode.darken,
       ),
     new Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[

            Container(
               child: new FlutterLogo(size: 170,),
             ),

            SizedBox(height: 100,),

            Container(
              child: Center(
                child: Text(
                  'Word Game', style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.blue.shade900,
                ),
                ),
              ),
            ),

           SizedBox(height: 150),
           Expanded(
             child: FlatButton(
               child: Text('Play', style:  TextStyle( color: Colors.lightBlue,),),
               onPressed: () {

                   Navigator.push(context , ScaleRoute(page: Main_game())
                 );
               },
             ),
           ),



           Expanded(
             child: FlatButton(
                child: Text('Settings', style: TextStyle(
                 color: Colors.lightBlue,
                ),

               ),
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => Main_game()),
                 );
               },
             ),
           ),


           Expanded(
             child: FlatButton(
               child: Text('Leader board:', style: TextStyle(
                 color: Colors.blue.shade400
               ),),
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => Main_game()),
                 );
               },
             ),
           ),


        ],

     ),
  ],
  ),
      backgroundColor: Colors.black87,
      
    );
  }
}
