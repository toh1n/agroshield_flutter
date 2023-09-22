import 'package:agroshield_flutter/ui/screens/home_screen.dart';
import 'package:agroshield_flutter/ui/screens/learn_screen.dart';
import 'package:agroshield_flutter/ui/screens/profile_screen.dart';
import 'package:agroshield_flutter/ui/screens/search_screen.dart';
import 'package:flutter/material.dart';

class BaseNavScreen extends StatefulWidget {
  const BaseNavScreen({super.key});

  @override
  State<BaseNavScreen> createState() => _BaseNavScreenState();
}

class _BaseNavScreenState extends State<BaseNavScreen> {

  List<Widget> screenList =
      [
        const HomeScreen(),
        const SearchScreen(),
        const LearnScreen(),
        const ProfileScreen(),
      ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: screenList[_selectedIndex],
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Container(
            color: Colors.blueGrey,
              child: Text("hello")
          ),
          Container(
              color: Colors.blueGrey,
              child: Text("hello")
          ),
          Container(
              color: Colors.blueGrey,
              child: Text("hello")
          ),
          Container(
              color: Colors.blueGrey,
              child: Text("hello")
          ),
        ],
      ),
    );
  }
}
