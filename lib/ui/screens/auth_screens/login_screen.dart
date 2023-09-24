import 'package:agroshield_flutter/ui/screens/base_nav_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text("Agroshield"),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),),

                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(

                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: const Icon(Icons.visibility),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),),

                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
                  ),
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const BaseNavScreen()),(route) => false,);
                  }, 
                  child: const Text("Login"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
