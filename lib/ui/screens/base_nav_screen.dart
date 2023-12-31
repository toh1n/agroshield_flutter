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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 4,
        selectedItemColor: Colors.redAccent,
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.house),label: "Home",backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.book),label: "Learn",backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile",backgroundColor: Colors.green),
        ],
      ),
    );
  }
}
