import 'package:carpooling_app/utils/constants.dart';

import 'package:carpooling_app/utils/style.dart';
import 'package:carpooling_app/views/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigationFromSplashScreen();
  }

  void navigationFromSplashScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      // if (SharedPrefs().isLoggedIn) {
      //   Navigator.popAndPushNamed(context, '/space');
      // } else {
      //   Navigator.popAndPushNamed(context, '/mobile');
      // }
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorShades.backGroundBlack,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              height: screenHeight * 0.25,
              width: screenHeight * 0.25,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/splash.png'),
                      fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(24)),
            ),
            SizedBox(height: screenHeight * 0.03),
            Text(AppConstants.appName, style: Theme.of(context).textTheme.h1),
            SizedBox(height: screenHeight * 0.01),
            Text(
              "Made with ❤ in Nepal",
              style: Theme.of(context).textTheme.h5,
              // textAlign: TextAlign.center,
            ),
            const Spacer(),
            Container(
              height: screenHeight * 0.04,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/powered_by_google.png'),
                      fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(24)),
            ),
            SizedBox(height: screenHeight * 0.05),
          ],
        ),
      ),
    );
  }
}
