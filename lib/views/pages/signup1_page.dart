import 'package:flutter/material.dart';
import 'package:footprint/views/pages/signup2_page.dart';

class Signup1Page extends StatefulWidget {
  const Signup1Page({super.key});

  @override
  State<Signup1Page> createState() => _Signup1PageState();
}

class _Signup1PageState extends State<Signup1Page> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Align(alignment: Alignment.centerLeft, child: Text('Email')),
            TextField(
              style: TextStyle(color: Colors.black),
              autocorrect: false,
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'johnlovespasta@footprint.com',
                hintStyle: TextStyle(color: Colors.black54),
              ),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            SizedBox(height: 20),
            Align(alignment: Alignment.centerLeft, child: Text('First Name')),
            TextField(
              style: TextStyle(color: Colors.black),
              autocorrect: false,
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'John',
                hintStyle: TextStyle(color: Colors.black54),
              ),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            SizedBox(height: 20),
            Align(alignment: Alignment.centerLeft, child: Text('Last Name')),
            TextField(
              style: TextStyle(color: Colors.black),
              autocorrect: false,
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Doe',
                hintStyle: TextStyle(color: Colors.black54),
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
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'john_loves_pasta',
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
                  backgroundColor: Colors.pink,
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
                child: Text('Next'),
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
            SizedBox(height: 20),
            //create sign in with google
          ],
        ),
      ),
    );
  }
}
