import 'package:agroshield_flutter/ui/screens/auth_screens/login_screen.dart';
import 'package:agroshield_flutter/ui/screens/base_nav_screen.dart';
import 'package:agroshield_flutter/ui/screens/home_screen.dart';
import 'package:agroshield_flutter/ui/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigateToLogin();
  }

  Future<void> navigateToLogin() async {
    Future.delayed(const Duration(seconds: 3)).then((_) async {
      SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
      bool isOnboarding = sharedPrefs.containsKey('isOnboarding');
      if (mounted) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) =>
          isOnboarding
              ? const LoginScreen()
              : const OnboardingScreen()),
              (route) => false,
        );
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "AgroShield",
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
