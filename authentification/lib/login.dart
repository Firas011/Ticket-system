import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth;
import 'package:authentification/Homepage.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  late String _email, password;

  CheckAuthenification() async {
    _auth.authStateChanges().listen((user) {
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
    return Scaffold(
      body: Container(
        color: Colors.yellow[50],
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              child: Image(
                image: AssetImage(""),
                fit: BoxFit.contain,
              ),
            ),
            Container(
              child: Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: TextFormField(validator: (input) {
                        if (input!.isNotEmpty) return 'Enter Email';

                        decoration:
                        InputDecoration(
                            labelText: 'Email', prefixIcon: Icon(Icons.email));
                        onSaved:
                        (input) => _email = input;
                      }),
                    ),
                    Container(
                      child: TextFormField(validator: (input) {
                        if (input!.length < 6)
                          return 'provide a min of 6 character';

                        decoration:
                        InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock));
                        obSecureText:
                        true;

                        onSaved:
                        (input) => _email = input;
                      }),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Text('Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
