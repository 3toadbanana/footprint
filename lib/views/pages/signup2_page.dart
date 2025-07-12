import 'package:flutter/material.dart';

class Signup2Page extends StatefulWidget {
  const Signup2Page({super.key});

  @override
  State<Signup2Page> createState() => _Signup2PageState();
}

class _Signup2PageState extends State<Signup2Page> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            margin: EdgeInsets.all(20.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF40515D),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Align(alignment: Alignment.centerLeft, child: Text('Password')),
                TextField(
                  style: TextStyle(color: Colors.black),
                  autocorrect: false,
                  controller: passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'strongpassword',
                    hintStyle: TextStyle(color: Colors.black54),
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('insert password strength thing'),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Confirm Password'),
                ),
                TextField(
                  style: TextStyle(color: Colors.black),
                  autocorrect: false,
                  controller: passwordController2,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'same as the password above',
                    hintStyle: TextStyle(color: Colors.black54),
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
                      // create account and take to profile page
                    },
                    child: Text(
                      'Create Account',
                      style: TextStyle(fontSize: 25),
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
