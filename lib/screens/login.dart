import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 600),
          padding: const EdgeInsets.all(80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                'version: no-cache 1',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 24,
              ),
              RaisedButton(
                color: Colors.yellow,
                child: Text("ENTER"),
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "not implement",
                    webPosition: "center",
                  );

                  Navigator.pushNamed(
                    context,
                    "/chat",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
