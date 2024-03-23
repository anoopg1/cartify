import 'package:cartify/ui/login_signup/screen_login_signup.dart';
import 'package:flutter/material.dart';

class ScreenLogoSplash extends StatelessWidget {
  const ScreenLogoSplash({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: const Color(0xFF317773),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: deviceHeight * 0.30,
            ),
            Image.asset(
              "assets/images/logo.png",
              height: deviceWidth * 0.40,
            ),
            SizedBox(
              height: deviceHeight * 0.30,
            ),
            SizedBox(
              width: deviceWidth * 0.70,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: const MaterialStatePropertyAll(20),
                  shadowColor: const MaterialStatePropertyAll(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ScreenLoginSignup(),
                  ));
                },
                child: const Text(
                  "GET STARTED",
                  style: TextStyle(
                      color: Color(0xFF317773), fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
