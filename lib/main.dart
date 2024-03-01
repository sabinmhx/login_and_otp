import 'package:flutter/material.dart';
import 'package:login_and_otp/screens/login/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login and OTP',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
