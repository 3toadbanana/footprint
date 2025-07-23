import 'package:flutter/material.dart';
import 'package:footprint/views/pages/settings_page.dart';
import 'package:footprint/views/widgets/post_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF40515D),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage();
                  },
                ),
              );
            },
          ),
        ],
        actionsPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                color: Color(0xFF40515D),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text('John Doe'),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 140.0,
                        child: Divider(thickness: 2.0, color: Colors.white),
                      ),
                      Text('recents'),
                      SizedBox(
                        width: 140.0,
                        child: Divider(thickness: 2.0, color: Colors.white),
                      ),
                    ],
                  ),
                  PostWidget(),
                  PostWidget(),
                  PostWidget(),
                  PostWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
