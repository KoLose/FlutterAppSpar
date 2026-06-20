import 'package:flutter/material.dart';
import 'package:sparapp/Authentication/login_page.dart';
import 'package:sparapp/Pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckPage extends StatefulWidget {
  const CheckPage({super.key});

  @override
  State<CheckPage> createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  bool _isLoggedIn = false;

  Future<void> _checkAuth() async {
    final prefs = await SharedPreferences.getInstance();
    final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    setState(() {
      _isLoggedIn = isLoggedIn;
    });
  }

  @override
  void initState() {
    _checkAuth();
    super.initState();
  }

  Widget build(BuildContext context) {
    return _isLoggedIn ? HomePage() : LoginPage();
  }
}