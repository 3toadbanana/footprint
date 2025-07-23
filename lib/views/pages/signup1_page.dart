import 'package:flutter/material.dart';
import 'package:footprint/main.dart';
import 'package:footprint/views/pages/login.dart';
import 'package:footprint/views/pages/signup2_page.dart';

class Signup1Page extends StatefulWidget {
  const Signup1Page({super.key});

  @override
  State<Signup1Page> createState() => _Signup1PageState();
}

class _Signup1PageState extends State<Signup1Page> {
  TextEditingController emailController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color(0xFF40515D),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 55,
                        padding: EdgeInsets.all(0),
                        alignment: Alignment.center,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Color(0xffFFD697),
                          borderRadius: BorderRadiusGeometry.circular(8),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      VerticalDivider(color: Colors.white, thickness: 2),
                      SizedBox(
                        height: 55,
                        width: 140,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(context, fadeRoute(LoginPage()));
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Color(0xff40515D),
                            overlayColor: Colors.grey,
                            alignment: Alignment.center,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(8),
                            ),
                            side: BorderSide(
                              width: 1.0,
                              color: Colors.grey,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Align(alignment: Alignment.centerLeft, child: Text('Email')),
                TextField(
                  style: TextStyle(color: Colors.black),
                  autocorrect: false,
                  controller: emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'johnlovespasta@footprint.com',
                    hintStyle: TextStyle(color: Colors.black87),
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('First Name'),
                ),
                TextField(
                  style: TextStyle(color: Colors.black),
                  autocorrect: false,
                  controller: firstnameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'John',
                    hintStyle: TextStyle(color: Colors.black87),
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Last Name'),
                ),
                TextField(
                  style: TextStyle(color: Colors.black),
                  autocorrect: false,
                  controller: lastnameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Doe',
                    hintStyle: TextStyle(color: Colors.black87),
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(height: 20),
                Align(alignment: Alignment.centerLeft, child: Text('Username')),
                TextField(
                  style: TextStyle(color: Colors.black),
                  autocorrect: false,
                  controller: usernameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'john_loves_pasta',
                    hintStyle: TextStyle(color: Colors.black87),
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFB9314F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8),
                      ),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Signup2Page();
                          },
                        ),
                      );
                    },
                    child: Text('Next', style: TextStyle(fontSize: 25)),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 140.0,
                      child: Divider(thickness: 2.0, color: Colors.white),
                    ),
                    Text('OR'),
                    SizedBox(
                      width: 140.0,
                      child: Divider(thickness: 2.0, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                //create sign in with google
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Sign in with Google',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      //figure out underline, eventually replace with multiple icons
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
