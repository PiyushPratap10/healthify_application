import 'package:flutter/material.dart';
import 'package:health_application/screens/login_screen.dart';
import 'package:health_application/widgets/custom_button.dart';
import 'package:health_application/widgets/skip_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() {
    return _RegisterScreenState();
  }
}

class _RegisterScreenState extends State<RegisterScreen> {
  void _onSignIn(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (ctx) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SkipButton(),
              Image.asset(
                'assets/images/app-store.png',
                width: 100,
                height: 90,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Lets Get Started',
                style: TextStyle(
                    color: Color(0xFF376F77),
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Create a new account',
                style: TextStyle(
                    color: Color.fromARGB(255, 57, 60, 64),
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 2,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.account_box),
                      labelText: 'Full Name',
                      labelStyle: TextStyle(fontSize: 14),
                      contentPadding: EdgeInsets.all(8)),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.mail),
                      labelText: 'Your Email',
                      labelStyle: TextStyle(fontSize: 14),
                      contentPadding: EdgeInsets.all(8)),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 12, 16, 1),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 14),
                      contentPadding: EdgeInsets.all(8)),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 12, 16, 1),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password Again',
                      labelStyle: TextStyle(fontSize: 14),
                      contentPadding: EdgeInsets.all(8)),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              const SizedBox(
                height: 2,
              ),
              const CustomButton('Sign Up'),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      _onSignIn(context);
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          color: Color(0xFF414B6B),
                          fontSize: 13,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
