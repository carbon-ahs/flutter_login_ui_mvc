// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login_ui_mvc/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/bg_art.jpg',
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              SizedBox(
                height: 100,
                width: 150,
                child: Image.asset(
                  'assets/images/odcl_logo.png',
                ),
              ),
              const SizedBox(height: 50),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email Address",
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.none,
                        color: Colors.black87,
                      ),
                    ),
                    CustomTextField(
                      controller: emailController,
                      hintText: "",
                      obsCuretext: false,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.none,
                        color: Colors.black87,
                      ),
                    ),
                    CustomTextField(
                      controller: passwordController,
                      hintText: "",
                      obsCuretext: true,
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Log In"),
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            side: const BorderSide(
                              width: 2.0,
                              color: Colors.white,
                            )),
                        child: Text("Sign Up"),
                      ),
                    ),
                    const SizedBox(height: 48),
                    Center(
                      child: Text(
                        "FORGOT PASSWORD?",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
