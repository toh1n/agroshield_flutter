import 'package:agroshield_flutter/ui/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Agroshield());
}

class Agroshield extends StatelessWidget {
  const Agroshield({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnboardingScreen(),
    );
  }
}
