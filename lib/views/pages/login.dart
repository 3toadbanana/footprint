import 'package:flutter/material.dart';
import 'package:footprint/views/pages/signup1_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
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
                      OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Signup1Page();
                              },
                            ),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(140, 55),
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
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      VerticalDivider(color: Colors.white, thickness: 2),
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
                          'Login',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
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
                            return Signup1Page();
                          },
                        ),
                      );
                    },
                    child: Text('Login', style: TextStyle(fontSize: 25)),
                  ),
                ),
                SizedBox(height: 20),
                //implement forgot password
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Forgot Password?',
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
