

import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text("Game"),
        backgroundColor: Colors.grey,
      ),
         body: Container(
          

         )

      
    );
    }}