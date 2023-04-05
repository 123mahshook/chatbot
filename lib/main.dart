import 'package:chatbot/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Chat Bot',
      theme: ThemeData(
        primarySwatch: primaryColor,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      routerConfig: router,
    );
  }
}

MaterialColor primaryColor = const MaterialColor(
  0xFF0083FF,
  <int, Color>{
    50: Color(0xFFf8fde8),
    100: Color(0xFFC8E4FF),
    200: Color(0xFFC8E4FF),
    300: Color(0xFF0083FF),
    400: Color(0xFF0083FF),
    500: Color(0xFF0083FF),
    600: Color(0xFF0083FF),
    700: Color(0xFF0083FF),
    800: Color(0xFF0083FF),
    900: Color(0xFF0083FF),
  },
);
