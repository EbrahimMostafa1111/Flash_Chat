import 'package:chat_app/constants.dart';
import 'package:chat_app/reusable.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  // final auth = FirebaseAuth.instance;
  // String? email;
  // String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                  height: 200.0,
                  child: Image.asset('images/logo.png'),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
                onChanged: (value) async {
                  //Do something with the user input.
                  // email = value;
                },
                decoration:
                    KTextFieldDecoration.copyWith(hintText: 'Enter your email'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
                onChanged: (value) {
                  //Do something with the user input.
                  // password = value;
                  // print(password);
                },
                decoration: KTextFieldDecoration.copyWith(
                    hintText: 'Enter your password'),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                  onPressed: ()  {
                    // try {
                    //   final newUser = await auth.createUserWithEmailAndPassword(
                    //       email: email!, password: password!);
                    //   if(newUser!=null){
                    //     Navigator.pushNamed(context, ChatScreen.id);
                    //   }
                    // } catch (e) {
                    //   print(e);
                    // }
                  },
                  color: Colors.blueAccent,
                  title: 'Register'),
            ],
          ),
        ),
      ),
    );
  }
}
