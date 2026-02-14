import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/main_screen.dart';
import 'package:couldai_user_app/screens/seller/seller_registration_screen.dart';

void main() {
  runApp(const AlibabaCloneApp());
}

class AlibabaCloneApp extends StatelessWidget {
  const AlibabaCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Global Wholesale Market',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF6600), // Alibaba-like orange
          primary: const Color(0xFFFF6600),
          secondary: const Color(0xFF333333),
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/seller/register': (context) => const SellerRegistrationScreen(),
      },
    );
  }
}
