import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.08,
                child: TextField(
                  cursorColor: Colors.green,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                    hintText: 'Enter email',

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black26),
                    ),
                  ),
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.015),

              // Password
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.08,
                child: TextField(
                  cursorColor: Colors.green,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                    hintText: 'Enter password',

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black26),
                    ),
                  ),
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02),

              // Login button
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.06,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                    backgroundColor: WidgetStatePropertyAll(Colors.green),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // Кнопка перейти на страницу регистрации
            ],
          ),
        ),
      ),
    );
  }
}
