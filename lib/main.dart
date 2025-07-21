import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/user_provider.dart';
import 'screens/first_screen.dart';

void main() {
  runApp(const PalindromeApp());
}

class PalindromeApp extends StatelessWidget {
  const PalindromeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MaterialApp(
        title: 'Palindrome App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const FirstScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
