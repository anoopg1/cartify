import 'package:cartify/ui/home/screen_home.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: const Color(0xFF317773),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: deviceHeight * 0.080,
            ),
            Image.asset(
              "assets/images/logo.png",
              height: deviceWidth * 0.30,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: deviceHeight * 0.070,
                    ),
                    const Text(
                      "Welcome Back!",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 38),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.040,
                    ),
                    SizedBox(
                      width: deviceWidth * 0.68,
                      height: deviceHeight * 0.065,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.black,
                          ),
                          hintText: "Email Id",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF1C3C3A),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.040,
                    ),
                    SizedBox(
                      width: deviceWidth * 0.68,
                      height: deviceHeight * 0.065,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.key,
                            color: Colors.black,
                          ),
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF1C3C3A),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 63),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: false,
                                onChanged: (bool? newValue) {},
                              ),
                              const Text(
                                "Remember me",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          const Text(
                            "Forget Password?",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 14),
                    SizedBox(
                      width: deviceWidth * 0.68,
                      height: deviceHeight * 0.060,
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
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ScreenHome(),
                            ),
                          );
                        },
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.020,
                    ),
                    const Text("or"),
                    SizedBox(
                      height: deviceHeight * 0.020,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/fb_logo.png", height: 35),
                        SizedBox(
                          width: deviceWidth * 0.050,
                        ),
                        Image.asset("assets/images/google_logo.png",
                            height: 35),
                      ],
                    ),
                    SizedBox(
                      height: deviceHeight * 0.050,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don’t have an account?"),
                        Text(
                          " Sign up",
                          style: TextStyle(
                            color: Color(0xFF1C3C3A),
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
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
