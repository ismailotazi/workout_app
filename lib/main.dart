import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const IronTrackApp());
}

class IronTrackApp extends StatelessWidget {
  const IronTrackApp({super.key});

  // دابا اختيار مؤقت
  final String gender = "male"; // بدّلها لـ "female" وجرب

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: gender == "female" ? AppTheme.femaleTheme : AppTheme.maleTheme,
      home: const HomePage(),
    );
  }
}
