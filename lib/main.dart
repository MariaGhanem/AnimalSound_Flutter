import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text("Animal Sounds",
          style: TextStyle(
            color: Colors.black
          ),),
          centerTitle: true,
          backgroundColor: Colors.brown[100],
        ),
        body: ListView(
          children: [
            Row(
              children: [
                Animals(AnimalName: "lion",AnimalSound: "lion.wav"),
                Animals(AnimalName: "elephant",AnimalSound: "elephant.wav"),
              ],
            ),
            Row(
              children: [
                Animals(AnimalName: "sheep",AnimalSound: "sheep.wav"),
                Animals(AnimalName: "horse",AnimalSound: "horse.wav"),
              ],
            ),
            Row(
              children: [
                Animals(AnimalName: "cat",AnimalSound: "cat.wav"),
                Animals(AnimalName: "dog",AnimalSound: "dog.wav"),
              ],
            ),
            Row(
              children: [
                Animals(AnimalName: "caw",AnimalSound: "caw.wav"),
                Animals(AnimalName: "duck",AnimalSound: "duck.wav"),
              ],
            ),
            Row(
              children: [
                Animals(AnimalName: "monkey",AnimalSound: "monkey.wav"),
                Animals(AnimalName: "chicken",AnimalSound: "chicken.wav"),
              ],
            ),
          ],

        ),
      ),
    );
  }
}

Expanded Animals({AnimalName,AnimalSound}){
      return Expanded(
        child: Card(
          child: Column(
            children: [
              TextButton(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 80,
                  child: Image(
                    image: AssetImage("images/${AnimalName}1.jpg"),
                  ),
                ),
                onPressed: (){
                  final player= AudioCache();
                  player.play("${AnimalSound}");
                },
              ),
              Text("${AnimalName}",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Tagesschrift Regular"
                ),)
            ],
          ),
        ),
      );
}
