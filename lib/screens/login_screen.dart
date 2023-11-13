// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              const SizedBox(height: 150),
              // logo
              SizedBox(
                height: 100,
                width: 150,
                child: Image.asset(
                  'assets/images/odcl_logo.png',
                ),
              ),

              Container(
                margin: EdgeInsets.only(
                  top: 50.0,
                  left: 70.0,
                  right: 20.0,
                ),
                alignment: Alignment.topLeft,
                child: Text(
                  "Email Address",
                  style: TextStyle(
                    fontSize: 16,
                    decoration: TextDecoration.none,
                    color: Colors.black87,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
