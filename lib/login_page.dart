// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/auth_controller.dart';
import 'package:flutter_firebase/signup_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.64,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/loginimg.png"), fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                const Text(
                  "Sign in to your account",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black26,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: (Offset(1.0, 1.0)),
                          color: Colors.grey.withOpacity(0.2),
                        )
                      ]),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.deepOrangeAccent,
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: (Offset(1.0, 1.0)),
                          color: Colors.grey.withOpacity(0.2),
                        )
                      ]),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.deepOrangeAccent,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      "Forgot your password?",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          InkWell(
            onTap: () {
              AuthController.instance.login(
                  emailController.text.trim(), passwordController.text.trim());
            },
            child: Container(
              width: w * 0.5,
              height: h * 0.18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage("img/loginbtn.png"), fit: BoxFit.cover),
              ),
              child: Center(
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: w * 0.15,
          ),
          RichText(
            text: TextSpan(
              text: "Don't have an account?",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 20,
              ),
              children: [
                TextSpan(
                  text: "  Create",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.to(() => SignUpPage()),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
