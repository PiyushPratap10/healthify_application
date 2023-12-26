import 'package:flutter/material.dart';
import 'package:health_application/screens/register_screen.dart';
import 'package:health_application/widgets/custom_button.dart';
import 'package:health_application/widgets/other_flatform.dart';
import 'package:health_application/widgets/skip_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  void _onSelect(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (ctx) => const RegisterScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Flexible(child: Container()),
                  const SkipButton(),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/app-store.png',
                    width: 100,
                    height: 90,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Welcome to Healthify',
                    style: TextStyle(
                        color: Color(0xFF376F77),
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Sign in to continue',
                    style: TextStyle(
                        color: Color.fromARGB(255, 57, 60, 64),
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16, 12, 16, 1),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.mail),
                          labelText: 'Your Email',
                          labelStyle: TextStyle(fontSize: 14),
                          contentPadding: EdgeInsets.all(8)),
                    ),
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
                    height: 10,
                  ),
                  const CustomButton("Sign In"),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 0,
                        width: 90,
                        decoration: const BoxDecoration(
                            border: Border.symmetric(
                                horizontal: BorderSide(width: 0.5))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('Or'),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 0,
                        width: 90,
                        decoration: const BoxDecoration(
                            border: Border.symmetric(
                                horizontal: BorderSide(width: 0.5))),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const OtherFlatform(
                      text: 'Login with Google',
                      icon: 'assets/images/google.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  const OtherFlatform(
                      text: 'Login with Facebook',
                      icon: 'assets/images/facebook.png'),
                  const SizedBox(
                    height: 6,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget Password?',
                      style: TextStyle(
                          color: Color(0xFF414B6B),
                          fontSize: 13,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Dont have a account?'),
                      TextButton(
                        onPressed: () {
                          _onSelect(context);
                        },
                        child: const Text(
                          'Register',
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
        ),
      ),
    );
  }
}
