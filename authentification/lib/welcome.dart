import 'package:flutter/material.dart';

class welcome extends StatefulWidget {
  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 45.0),
              Container(
                height: 400,
                child: Image(
                  image: AssetImage("images/Gear.png"),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'welcome to ',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Ticket system',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "Order you technician with a couple clicks",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // ignore: deprecated_member_use
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.yellow,
                    ),
                  ),
                  SizedBox(width: 20.0),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    onPressed: () {},
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.yellow,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
