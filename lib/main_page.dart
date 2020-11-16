import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_auth/auth_services.dart';

class MainPage extends StatelessWidget {
  final User user;

  MainPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(user.uid),
            RaisedButton(
                child: Text("Logout"),
                onPressed: () async {
                  await AuthServices.signOut();
                })
          ],
        ),
      ),
    );
  }
}
