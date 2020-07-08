import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tri_nethra/screens/login/localwidgets/orpop.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange[900],
              Colors.orange[300],
              Colors.orange[200]
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //FadeAnimation(
                  //1.3,
                  Text(
                    "Enter your Details",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ), //),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                /*decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),*/
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),
                        OrPop(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[200]))),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Email or Phone number",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        OrPop(
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Email or Phone number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ), //),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        //),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.orange[800],
                                Colors.orange[200]
                              ]),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange[900]),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "TRI-NETHRA",
                          style: TextStyle(
                              color: Colors.orange[900],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(fontSize: 15),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Don't have an account? ",
                                    style: TextStyle(
                                        color: Colors.grey[500],
                                        fontStyle: FontStyle.italic)),
                                TextSpan(
                                  text: 'Sign Up',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.orange[900]),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Sign Up page');
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 10),
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'By clicking Sign Up, you agree to our ',
                                  style: TextStyle(color: Colors.grey)),
                              TextSpan(
                                  text: 'Terms of Service',
                                  style: TextStyle(color: Colors.orange[900]),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Terms of Service');
                                    }),
                              TextSpan(
                                text: ' and that you have read our ',
                                style: TextStyle(color: Colors.grey),
                              ),
                              TextSpan(
                                  text: 'Privacy Policy',
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.orange[900]),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Privacy Policy');
                                    }),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      //),
    );
  }
}
