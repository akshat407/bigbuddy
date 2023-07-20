import 'package:flutter/material.dart';
import 'package:whiteboard/whiteboard.dart';

class white_board extends StatelessWidget {
  const white_board({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello bigbuddy"),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                child: WhiteBoard(),
              )
            ]
          )
      )
    );
  }
}