import 'package:flutter/material.dart';
import 'package:foodapp/const.dart';
import 'package:foodapp/onboarding.dart';
import 'package:foodapp/signup_screen.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 600), // Adjust max width
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LogIn',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.black87),
                ),
                SizedBox(height: 12),
                Image.asset(
                  'assets/login.png',
                  width: 200, // Adjust image width
                ),
                SizedBox(height: 24),
                TextFieldContainer(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: btnColor,
                        ),
                        hintText: 'Enter email or username',
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 12),
                TextFieldContainer(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: btnColor,
                        ),
                        hintText: 'Enter password',
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 12),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OnBoarding()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: btnColor,
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(width: 12),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                            color: btnColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Divider(color: Colors.grey),
                SizedBox(height: 12),
                SignInButton(
                  image: 'assets/google.png',
                  text: 'Continue with Google',
                ),
                SizedBox(height: 12),
                SignInButton(
                  image: 'assets/facebook.png',
                  text: 'Continue with Facebook',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.withOpacity(0.2)),
      child: child,
    );
  }
}

class SignInButton extends StatelessWidget {
  final String image;
  final String text;

  const SignInButton({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.green.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 40,
            height: 40,
          ),
          SizedBox(width: 12),
          Text(
            text,
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          )
        ],
      ),
    );
  }
}
