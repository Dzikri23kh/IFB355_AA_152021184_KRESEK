import 'package:flutter/material.dart';
import 'package:flutter_application_project/bmi_calculator_screen.dart';
import 'package:flutter_application_project/calculator_screen.dart';
import 'package:flutter_application_project/currency_converter.dart';
import 'package:flutter_application_project/developer_profile_screen.dart';
import 'package:flutter_application_project/dashboard_screen.dart';
import 'package:flutter_application_project/login_screen.dart';
import 'package:flutter_application_project/register_screen.dart';
import 'package:flutter_application_project/splash_screen.dart';
import 'package:flutter_application_project/surprise_screen.dart';
import 'package:flutter_application_project/temperature_converter.dart'; 
import 'package:flutter_application_project/about_screen.dart'; 



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/splash', 
      routes: {
        
        '/splash': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/profile': (context) => DeveloperProfileScreen(), // Tambahkan rute untuk halaman BMI Calculator
        '/BMI': (context) => BMICalculatorScreen(), // Tambahkan rute untuk halaman BMI Calculator
        '/calculator': (context) => CalculatorScreen(), // Tambahkan rute untuk halaman BMI Calculator
        '/temp': (context) => TemperatureConverter(), // Tambahkan rute untuk halaman BMI Calculator
        '/currency': (context) => CurrencyConverter(), // Tambahkan rute untuk halaman BMI Calculator
        '/surprise': (context) => SurprisePage(), // Tambahkan rute untuk halaman BMI Calculator
        '/about': (context) => AboutPage(), // Tambahkan rute untuk halaman BMI Calculator
      },
    );
  }
}
