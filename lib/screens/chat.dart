import 'package:flutter/material.dart';

class MyChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "CHAT",
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
