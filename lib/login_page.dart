import 'package:flutter/material.dart';
import 'package:google_auth/auth_services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Login"),
            onPressed: () async {
              await AuthServices.signInAnonymous();
            }),
      ),
    );
  }
}
