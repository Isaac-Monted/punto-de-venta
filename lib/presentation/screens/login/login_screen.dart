import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            IconButton(icon: Icon(Icons.login), onPressed: (){
              Navigator.pushReplacementNamed(context, '/home');
            },)
          ],
        ),
      )
    );
  }
}