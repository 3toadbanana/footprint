import 'package:flutter/material.dart';
import 'package:footprint/data/notifiers.dart';
import 'package:footprint/views/pages/signup1_page.dart';
import 'package:footprint/views/pages/profile_page.dart';

List<Widget> pages = [Signup1Page(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedPageNotifier,
          builder: (context, selectedPage, child) {
            return pages.elementAt(selectedPage);
          },
        ),
      ),
    );
  }
}
