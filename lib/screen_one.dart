import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Count Number:"),
            Text("Count Double Number:"),
            ElevatedButton(
              onPressed: (){}, 
              child: Text("Click")
            )
          ],
        ),
      ),
    );
  }
}