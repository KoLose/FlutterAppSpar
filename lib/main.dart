import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sparapp/Authentication/check_page.dart';
import 'package:sparapp/Authentication/login_page.dart';
import 'package:sparapp/Authentication/recovery_password_page.dart';
import 'package:sparapp/Authentication/register_page.dart';
import 'package:sparapp/Pages/profile_page.dart';
// ignore: unused_import
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {

  await dotenv.load(fileName: "secret.env");

  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_KEY']!,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Benova',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // '/': (context) => CheckPage(),
        '/': (context) => CheckPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/recovery':(context) => RecoveryPasswordPage(),
      },
    );
  }
}
