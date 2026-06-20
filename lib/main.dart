import 'package:flutter/material.dart';
import 'package:sparapp/Authentication/check_page.dart';
import 'package:sparapp/Authentication/login_page.dart';
import 'package:sparapp/Authentication/register_page.dart';
// ignore: unused_import
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  // await Supabase.initialize(
  //   url: 'https://jdexyacedtkwroglzawr.supabase.co',
  //   anonKey: 'sb_publishable_5lAeJexDWhGRe4b_4jEtTg_wZ-lc8Eq',
  // );
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
        '/': (context) => CheckPage(),
        '/login':(context) => LoginPage(),
        '/register': (context) => RegisterPage()
      },
    );
  }
}
