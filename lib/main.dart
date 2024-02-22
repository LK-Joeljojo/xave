import 'package:flutter/material.dart';
import 'package:xave/formulaire/login.dart';
import 'package:xave/pages/add%20expense/screen1.dart';
import 'package:xave/pages/setting.dart';

import 'formulaire/register.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: ThemeData(

      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF8F8F8),
        body: Screen1(),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Color(0xff9BA5FA),
          selectedItemColor: Color(0xff214FF1),
          type: BottomNavigationBarType.fixed,
          items: const [

            BottomNavigationBarItem(icon: Icon(Icons.featured_play_list_outlined),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.camera_alt_outlined),label: 'Stats'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
            BottomNavigationBarItem(icon: Icon(Icons.add,size: 30,),label: 'Expense'),

          ],
        ),
      ),
    );
  }
}

