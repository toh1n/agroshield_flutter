import 'package:agroshield_flutter/ui/utils/image_manager.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.notifications)),
                ],
              ),
              const SizedBox(height: 20,),
              const Text("Plant Quest",style: TextStyle(
                color: Colors.cyan,
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(ImageManager.homeScanPicPNG,
                    height: 200,
                    width: 200,
                  ),
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                    ),
                    child: Text("dfgsdfg"),
                  )
                ],
              )

            ],
          ),
        ),
      )),
    );
  }
}
