import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_countdown_timer/countdown_timer.dart';

//import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types


class Main_game extends StatefulWidget {
  @override
  _Main_gameState createState() => _Main_gameState();
}
int score =0;
class _Main_gameState extends State<Main_game> {
  @override


  Widget build(BuildContext context) {
    String $score='0';
    String $timestamped='0';
    List<String> list = ["A", "B", "C", "D","E","F"];
    return Scaffold(
      /*appBar: AppBar(
        centerTitle: true,
        title: Text("Game Time"),backgroundColor: Colors.purple.shade700,),
    */
    body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
      new Image(
      image: new AssetImage("images/wall1.jpg"),
      fit: BoxFit.cover,
      color: Colors.black54,
      colorBlendMode: BlendMode.darken,
    ),

      Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(width: 200,),
                    FlatButton(
                      padding: EdgeInsets.all(10.0),
                      onPressed: null,
                      child: Row(
                        children: <Widget>[
                          Text("Time: "+$timestamped, style: TextStyle(
                            color: Colors.white
                          ),),
                          Icon(Icons.alarm)
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              Center(
                child: Text("Here is the clue for the ",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,),
                ),
              ),


              SizedBox(height: 200,),
              SizedBox(height: 50,),

              Container(
                child: Row(
                  children: <Widget>[
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: list.map((String data) {
                          return Container(
                            width: 60,
                            height: 30,
                            child: Center(
                              child: Text("$data", style: TextStyle(
                                color: Colors.white,
                              ),),
                            ),
                          );
                        }).toList(),),),

                  ],
                ),
              ),

              Container(
                child: Row(
                  children: <Widget>[
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: list.map((String data) {
                          return Container(
                            width: 60,
                            height: 30,
                            child: Center(
                              child: Text("__", style: TextStyle(
                                color: Colors.white,
                              ),),
                            ),
                          );
                        }).toList(),),),

                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),

              Container(
                child: Row(
                  children: <Widget>[
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: list.map((String data) {
                          return Container(
                            width: 60,
                            height: 50,
                            child: RaisedButton(
                              child: Text(data),
                              onPressed: () {
                                print(data);
                              },

                            ),
                          );
                        }).toList(),),),

                  ],
                ),
              ),
                SizedBox(height: 50,),

              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        width: 50,
                        height: 40,
                        child: RaisedButton(
                          child: Text("Mix"),
                          onPressed: (){
                          },
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        width: 50,
                        height: 40,
                        child: RaisedButton(
                          child: Text("Submit"),
                          onPressed: (){
                          },
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        width: 50,
                        height: 40,
                        child: RaisedButton(
                          child: Text("<<"),
                          onPressed: (){
                          },
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              Center(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                            onPressed:(){
                              Navigator.pop(context);
                            },

                            child: Text("Hint", style: TextStyle(
                            color: Colors.white,
                            ),)
                        ),

                        FlatButton(
                            onPressed: (){

                            },
                            child: Text("Streak: "+$score, style: TextStyle(
                            color: Colors.white
                            ),),
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            FlatButton( child: Text("Sound", style: TextStyle(
                              color: Colors.white,
                            ) ),
                            onPressed: (){
                              },
                            ),
                          ],
                        ),


                      ],
                    ),
                  )),
            ],
          )
      ),

           ],
                  ),
      backgroundColor: Colors.black54,
    );

  }
}


