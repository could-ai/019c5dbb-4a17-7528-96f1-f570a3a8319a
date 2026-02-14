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
          seedColor: const Color(0xFF00C853), // Mint Green / Vibrant Green
          primary: const Color(0xFF00C853),
          secondary: const Color(0xFF333333),
          surface: Colors.white,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
        ),
        scaffoldBackgroundColor: Colors.white, // White background as requested
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF00C853),
          unselectedItemColor: Colors.grey,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/seller/register': (context) => const SellerRegistrationScreen(),
      },
    );
  }
}
