import 'package:flutter/material.dart';

List<String> images = [
  "lib/Exercises/EX-3/w4-s2/bird.jpg",
  "lib/Exercises/EX-3/w4-S2/bird2.jpg",
  "lib/Exercises/EX-3/w4-S2/insect.jpg",
  "lib/Exercises/EX-3/w4-S2/girl.jpg",
  "lib/Exercises/EX-3/w4-S2/man.jpg",
];

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false, // Why this line ? Can you explain it ?
      home: Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: const Text('Image viewer'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.navigate_before),
              tooltip: 'Go to the previous image',
              onPressed: () => {},
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: IconButton(
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Go to the next image',
                onPressed: () => {},
              ),
            ),
          ],
        ),
        body: Image.asset(images[0]),
      ),
    ));
