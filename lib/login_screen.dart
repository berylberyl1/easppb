// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: NetworkImage('https://media.discordapp.net/attachments/1225012883554041856/1255931218676027493/pngwing.com.png?ex=667eec98&is=667d9b18&hm=b2e7f5c2fa25fdda732f0f65a3a4c1b44020a8332e1089d00c8056b417215a75&=&format=webp&quality=lossless&width=437&height=437'),
                width: 300,
              ),
              SizedBox(height: 25),
              Text(
                'Sign in or create an account', 
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      '* indicates required field', 
                      style: TextStyle(
                        fontSize: 16, 
                        color: Colors.black
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: '* Username or email address',
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: '* Password',
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),

              Column(
                children: [
                  Text(
                    'Forgot your username?', 
                    style: TextStyle(
                      color: Color(0xFF01714B),
                      decoration: TextDecoration.underline
                    )
                  ),
                  Text(
                    'Forgot your password?', 
                    style: TextStyle(
                      color: Color(0xFF01714B),
                      decoration: TextDecoration.underline
                    )
                  ),
                ],
              ),
              SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF01714B),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(
                      'Sign in', 
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              
              Text(
                'Join Now', 
                style: TextStyle(
                  color: Color(0xFF01714B),
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}