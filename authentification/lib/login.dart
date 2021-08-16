import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String _email, _password;

  CheckAuthenification() async {
    _auth.onAuthStateChanged.listen((user) {
      if (user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Homepage()));
      }
    });

    @override
    void initstate() {
      super.initState();
      this.CheckAuthenification();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
