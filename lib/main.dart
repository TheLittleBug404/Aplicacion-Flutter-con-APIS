import 'package:app_login/src/presentacion/screens/login_screen.dart';
import 'package:app_login/src/presentacion/screens/register_screen.dart';
import 'package:app_login/src/presentacion/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/welcome', //en este caso la primera pantalla en entrar sera el welcome
      routes: {
        //si le definimos nuestras rutas flutter no sabra primero a cual de todas entrar por eso usamos intialRoute
        "/welcome":(BuildContext context) => const WelcomeScreen(),
        "/login":(BuildContext context) => const LoginScreen(),
        "/register":(BuildContext context) => const RegisterScreen()
      }
    );
  }
}