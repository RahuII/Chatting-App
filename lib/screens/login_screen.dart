import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/components/child_loading_row.dart';
import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

import '../components/eleveted_button.dart';
import 'chat_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email = "";
  String password = "";
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ProgressHUD(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: SizedBox(
                  height: 200.0,
                  child: Image.asset('images/logo.png'),
                ),
              ),
              const SizedBox(
                height: 48.0,
              ),
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: "Enter your email",
                  )),
              const SizedBox(
                height: 8.0,
              ),
              TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: "Enter your password",
                  )),
              const SizedBox(
                height: 24.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: CustomElevatedButton(
                  onPressed: () async {
                    try {
                      if (_isLoading) return;
                      setState(() => _isLoading = true);
                      final user = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);

                      Navigator.pushNamed(context, ChatScreen.id);
                      setState(() => _isLoading = false);
                    } catch (e) {
                      print(e);
                    }
                  },
                  primaryColorHexCode: 0xFF40C4FF,
                  child: _isLoading
                      ? const ChildLoadingRow()
                      : const Text('Log In', style: kTextStyle),
                ),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
