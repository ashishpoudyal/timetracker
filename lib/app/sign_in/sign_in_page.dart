import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:timetrackerapp/app/sign_in/sign_in_button.dart';
import 'package:timetrackerapp/app/sign_in/socialsign_in_page.dart';

class SignInPage extends StatelessWidget {
  SignInPage({
    Key? key,
  }) : super(key: key);

  Future<void> _signInAnonymously() async {
    final authResult = await FirebaseAuth.instance.signInAnonymously();
    print("press");
    print("${authResult.user!.uid}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Time Tracker"),
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[300],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Signin",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 25.0,
          ),
          SocialSignInButton(
              color: Colors.white,
              text: "Sign in with Google",
              onPressed: () {},
              assetName: "assets/images/google-logo.png",
              textColor: Colors.black,
              height: 45),
          SizedBox(
            height: 20,
          ),
          SocialSignInButton(
              color: Colors.blue,
              text: "Sign in with facebook",
              onPressed: () {},
              assetName: "assets/images/facebook-logo.png",
              textColor: Colors.white,
              height: 45),
          SizedBox(
            height: 20,
          ),
          SignInButton(
            text: "Sign in with Email",
            color: Colors.green,
            onPressed: () {},
            textColor: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Or'),
          ),
          SignInButton(
            text: "Go anonymous",
            color: Colors.limeAccent,
            onPressed: () {
              _signInAnonymously();
            },
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
