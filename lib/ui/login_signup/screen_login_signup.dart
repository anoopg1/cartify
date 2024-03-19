import 'package:flutter/material.dart';

class ScreenLoginSignup extends StatelessWidget {
  const ScreenLoginSignup({super.key});

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
              height: deviceHeight * 0.25,
            ),
            Image.asset(
              "assets/images/logo.png",
              height: deviceWidth * 0.40,
            ),
            SizedBox(
              height: deviceHeight * 0.10,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: deviceHeight * 0.010,
                    ),
                    const Text(
                      "HELLO!",
                      style: TextStyle(
                          fontSize: 21,
                          color: Color(0xFF1C3C3A),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: deviceWidth * 0.75,
                      height: deviceHeight * 0.070,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: const MaterialStatePropertyAll(10),
                          shadowColor:
                              const MaterialStatePropertyAll(Colors.black),
                          backgroundColor:
                              const MaterialStatePropertyAll(Color(0xFF1C3C3A)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * 0.75,
                      height: deviceHeight * 0.070,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: const MaterialStatePropertyAll(10),
                          shadowColor:
                              const MaterialStatePropertyAll(Color(0xFF1C3C3A)),
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side:
                                    const BorderSide(color: Color(0xFF1C3C3A))),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Color(0xFF1C3C3A),
                              fontSize: 15,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.080,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
