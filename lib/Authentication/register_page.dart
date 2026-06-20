import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Logo
              Image.asset(
                'images/logo.png',
                fit: BoxFit.contain,
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.45,
              ),

              // Login
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(decoration: InputDecoration()),
              ),

              // Пароль
              // Повтор пороля
              // Кнопка зарегистрироваться
              // Кнопка перейти на страницу авторизации
            ],
          ),
        ),
      ),
    );
  }
}
