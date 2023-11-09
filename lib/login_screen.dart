import 'package:flutter/material.dart';
import 'register_screen.dart'; // Impor halaman registrasi
import 'dashboard_screen.dart'; // Impor halaman dashboard

class LoginScreen extends StatelessWidget {
  void _handleLogin(BuildContext context) {
    // Implementasi logika autentikasi
    // Jika berhasil, arahkan ke halaman dashboard
    Navigator.pushReplacementNamed(context, '/dashboard');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6441A5),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 150.0, right: 16, left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Ganti warna teks
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(
                width: 319,
                height: 54,
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));
                    },
                    child: Center(
                    child: Text("LOGIN", style: TextStyle(
                      color: Color(0xff6441A5)
                    ),),
                  ),
                  )
                  
                ),
              ),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text(
                  'Belum punya akun? Daftar sekarang!',
                  style: TextStyle(
                    color: Colors.white, // Ganti warna teks
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
