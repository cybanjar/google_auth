import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_auth/login_page.dart';
import 'package:google_auth/main_page.dart';
import 'package:provider/provider.dart';

import 'login_page.dart';
import 'main_page.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User firebaseUser = Provider.of<User>(context);
    print(firebaseUser);

    return (firebaseUser == null) ? LoginPage() : MainPage(firebaseUser);
  }
}
