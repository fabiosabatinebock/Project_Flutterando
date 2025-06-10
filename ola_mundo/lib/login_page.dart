//import 'dart:js_interop';
import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

Widget _body(){
  return SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/images/logo.png'),
                ),
                Container(
                  height: 20
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (text){
                            email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder()
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          onChanged: (text){
                            password = text;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder()
                          ),
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(                          
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            if (email == 'fabiosabatinejuina@gmail.com' && password == '123') {
                              Navigator.of(context).pushReplacementNamed('/home');
                            } else {
                              print('Login inválido.');
                            }
                          },
                          child: Text('Entrar'),
                        ),
                    ],
                  ),
                  )
                ),                              
                ],
              ),
          ),
        ),
      );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            )),
          Container(
            color: Colors.black.withOpacity(0.4),
          ),
          _body(),
        ],
      ) 
    );
  }
}