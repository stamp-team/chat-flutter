import 'package:chat_flutter/input_text_field.dart';
import 'package:chat_flutter/sign_in_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final nameTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, top: 60),
            child: Text(
              'SIGN UP',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 40, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      InputTextField(
                        hintText: 'name',
                        keyboardType: TextInputType.text,
                        controller: nameTextController,
                      ),
                      InputTextField(
                        hintText: 'email',
                        keyboardType: TextInputType.text,
                        controller: emailTextController,
                      ),
                      InputTextField(
                        hintText: 'password',
                        keyboardType: TextInputType.text,
                        controller: passwordTextController,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.only(
                        left: 60, right: 60, top: 10, bottom: 10),
                    child: Text(
                      "Start",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    color: Colors.white,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          style: BorderStyle.solid, color: Colors.grey),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return SignInPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
