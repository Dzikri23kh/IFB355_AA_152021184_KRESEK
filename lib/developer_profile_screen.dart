import 'package:flutter/material.dart';

class DeveloperProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff6441A5), // Warna latar belakang ungu
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/agungt.jpg'), // Ganti dengan gambar profil Anda
            ),
            SizedBox(height: 20.0),
            Text(
              'Agung Tauhid',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Warna teks putih
              ),
            ),
            Text(
              '15-2021-184',
              style: TextStyle(
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
                color: Colors.white, // Warna teks putih
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Pengembang',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white, // Warna teks putih
              ),
            ),
          ],
        ),
      ),
    );
  }
}
