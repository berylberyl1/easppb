// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:easppb/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const LoginScreen())
      );
    });
  }

  @override
  void dispose() {
    super.dispose(); // Invoke the overridden method from the superclass
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: NetworkImage('https://media.discordapp.net/attachments/1225012883554041856/1255931218676027493/pngwing.com.png?ex=667eec98&is=667d9b18&hm=b2e7f5c2fa25fdda732f0f65a3a4c1b44020a8332e1089d00c8056b417215a75&=&format=webp&quality=lossless&width=437&height=437'),
              width: 300,
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}