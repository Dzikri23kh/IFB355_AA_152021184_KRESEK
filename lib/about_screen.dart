import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
        backgroundColor: Color(0xff6441A5),
      ),
      backgroundColor: Color(0xffE0D9ED),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tentang Aplikasi KRESEK',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff6441A5)),
            ),
            SizedBox(height: 16.0),
            Text(
              'Deskripsi Aplikasi:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xff6441A5)),
            ),
            SizedBox(height: 8.0),
            Text(
              'Aplikasi KRESEK adalah sebuah aplikasi yang dirancang untuk menuntaskan salah satu tugas dari Mata Kuliah Pemrograman Mobile serta bisa memudahkan pengguna dalam melakukan berbagai tugas seperti menghitung BMI, melakukan kalkulasi, dan konversi suhu dan mata uang. Selain itu, aplikasi ini juga menyediakan fitur kejutan yang dapat membuat pengguna terkejut.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24.0),
            Text(
              'Versi Aplikasi: 1.0.0',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24.0),
            Text(
              'Pengembang:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xff6441A5)),
            ),
            SizedBox(height: 8.0),
            Text(
              'Agung Tauhid',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              'agungtauhid18@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
