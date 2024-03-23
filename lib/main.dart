import 'package:cartify/ui/logo_splash/screen_logo_splash.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        bottomNavigationBarTheme: BottomNavigationBarTheme.of(context).copyWith(
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 2, 124, 211),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const ScreenLogoSplash(),
    );
  }
}
