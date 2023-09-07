import 'package:agroshield_flutter/ui/screens/home_screen.dart';
import 'package:agroshield_flutter/ui/utils/image_manager.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const HomeScreen()),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset(ImageManager.onboardingHelloPNG, width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color(0xffafc1a7),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: const Color(0xffafc1a7),
      allowImplicitScrolling: true,
      infiniteAutoScroll: false,

      pages: [
        PageViewModel(
          titleWidget: const SizedBox(height: 10,),
          bodyWidget: SafeArea(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(ImageManager.onboardingHelloPNG),
              const Text("Hello!",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35
              ),),
              const Text("Welcome to Agroshield!",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
              ),
                textAlign: TextAlign.center,
              ),
            ],
          )),
          decoration: const PageDecoration(
            imageAlignment: Alignment.center,  // Changes here
          ),
        ),

        PageViewModel(
          titleWidget: const SizedBox(height: 10,),
          bodyWidget: SafeArea(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(ImageManager.onboardingHarvestPNG),
              const Text("Harvest",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35
                ),),
              const Text("Let's explore agriculture world with agroshield",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          )),
          decoration: const PageDecoration(
              imageAlignment: Alignment.center,
              pageColor: Color(0xFF66885A)// Changes here
          ),
        ),

        PageViewModel(
          titleWidget: const SizedBox(height: 10,),
          bodyWidget: SafeArea(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(ImageManager.onboardingExplorePNG),
              const Text("Hello!",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35
              ),),
              const Text("Welcome to Agroshield!",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
                textAlign: TextAlign.center,
              ),
            ],
          )),
          decoration: const PageDecoration(
            imageAlignment: Alignment.center,  // Changes here
          ),
        ),



      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.white,
        activeColor: Colors.white,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Color(0xFF66885A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
        ),
      ),
      nextStyle: const ButtonStyle(
        iconColor: MaterialStatePropertyAll(Colors.white),
      ),
      showNextButton: true,
    );
  }
}
