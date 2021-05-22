import 'dart:math';
import 'package:flutter/material.dart';
/*
CREATED BY BISWARUP BHATTACHARJEE
EMAIL    : bbiswa471@gmail.com
PHONE NO : 6290272740
*/

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Center(child:Text("Chaucer Dieces",style: TextStyle(fontFamily: 'SR',letterSpacing: 5,fontSize: 30),)),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: DieceePage(),
    ),
  ));
}
class DieceePage extends StatefulWidget {
  @override
  _DieceePageState createState() => _DieceePageState();
}

class _DieceePageState extends State<DieceePage> {
  @override
  int leftDieceNumber=1;
  int RightDieceNumber=2;
  void changedieceeface(){
    RightDieceNumber=Random().nextInt(6)+1;
    leftDieceNumber=Random().nextInt(6)+1;
  }
  Widget build(BuildContext context) {
    return Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child:Padding(
                padding:const EdgeInsets.all(16.0),
                child: FlatButton(
                    onPressed: (){
                      setState(() {
                        changedieceeface();
                      });
                    },
                    child:Image.asset('assets/images/dice${leftDieceNumber}.png')),
              ),),
            Expanded(
              child:Padding(
                padding: const EdgeInsets.all(16.0),
                child:FlatButton(
                    onPressed: (){
                     setState(() {
                     changedieceeface();
                     });
                    },
                    child:Image.asset('assets/images/dice${RightDieceNumber}.png')
                ),
              ),),
          ],
        )
    );
  }
}

