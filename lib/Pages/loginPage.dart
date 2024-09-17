import 'package:flutter/material.dart';
import 'package:teste1/AppRoutes.dart';
import 'package:teste1/Pages/homePage.dart';
import 'package:teste1/Pages/signUpPage.dart';
import 'package:teste1/database/databaseOperations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:teste1/firebase_options.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Teste 1',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Faça seu Login...',
                  style: TextStyle(color: Colors.black, fontSize: 30)),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                ),
                obscureText: true,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  
                  DatabaseOperationsFirebase().signInWithEmailAndPassword(
                      context, _emailController.text, _passwordController.text);
                },
                child: Text('Entrar'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                child: Text('Criar uma nova conta'),
                style: TextButton.styleFrom(foregroundColor: Colors.black),
              ),
            ],
          ),
        ));
  }
}
