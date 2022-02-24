import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';

import '../components/eleveted_button.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
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
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: "Enter your email",
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: "Enter your password",
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 16.0),
            //   child: Material(
            //     color: Color(0xFF448AFF),
            //     borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            //     elevation: 5.0,
            //     child: MaterialButton(
            //       onPressed: () {
            //         //Implement registration functionality.
            //       },
            //       minWidth: 200.0,
            //       height: 42.0,
            //       child: const Text(
            //         'Register',
            //         style: TextStyle(color: Colors.white),
            //       ),
            //     ),
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: CustomElevatedButton(
                onPressed: () {},
                primaryColorHexCode: 0xFF448AFF,
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
