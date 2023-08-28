import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int i )
  {
    final player = AudioPlayer();
    player.play(AssetSource('note$i.wav'));
  }

  Expanded buildingkeys(Color co,int i){

    return Expanded(
      child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(co),
          ),
          onPressed: () {
            playsound(i);
          },
          child: Text('')),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildingkeys(Colors.red,1),
              buildingkeys(Colors.orangeAccent,2),
              buildingkeys(Colors.yellowAccent,3),
              buildingkeys(Colors.greenAccent,4),
              buildingkeys(Colors.lightBlueAccent,5),
              buildingkeys(Colors.indigo,6),
              buildingkeys(Colors.deepPurple,7),
            ],
          ),
        ),
      ),
    );
  }
}