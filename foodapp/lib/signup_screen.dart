import 'package:flutter/material.dart';
import 'package:foodapp/const.dart';
import 'package:foodapp/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
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
                  'Signup',
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
                SizedBox(height: 20),
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
                        hintText: 'Enter Password',
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
                        hintText: 'Confirm Password',
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 12),
                GestureDetector(
                  onTap: () {
                    // Implement signup logic here
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
                      'Signup',
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
                      "Already have an account?",
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(width: 12),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogInScreen()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: btnColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
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
