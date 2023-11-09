import 'package:flutter/material.dart';

class SurprisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KRESEK'),
        backgroundColor: Color(0xff6441A5),
      ),
      backgroundColor: Color(0xffE0D9ED),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selamat Datang di Halaman Kejutan!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showSurprise(context);
              },
              child: Text('Tekan untuk Kejutan!'),
            ),
          ],
        ),
      ),
    );
  }

  void _showSurprise(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            '🎉 Kejutan! 🎉',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xff6441A5),
            ),
          ),
          content: Text(
            'Pinjam Dulu Seratus TF Dana 082119758699 a.n AGUNG TAUHID',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Tutup'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}


