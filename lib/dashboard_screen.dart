import 'package:flutter/material.dart';
import 'package:flutter_application_project/about_screen.dart';
import 'developer_profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  List<Widget> _buildPages() {
    return [
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selamat Datang di KRESEK, Tekan ikon untuk kejutan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/surprise');
              },
              child: Icon(
                Icons.card_giftcard,
                size: 50,
                color: Color(0xff6441A5),
              ),
            ),
          ],
        ),
      ),
      DeveloperProfileScreen(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = _buildPages();

    return Scaffold(
      appBar: AppBar(
        title: Text('KRESEK'),
        backgroundColor: Color(0xff6441A5),
      ),
      backgroundColor: Color(0xffE0D9ED),
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 500),
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Dev Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
  child: ListView(
    children: <Widget>[
      DrawerHeader(
        decoration: BoxDecoration(
          color: Color(0xff6441A5),
        ),
        child: Text(
          'KRESEK',
          style: TextStyle(
            color: Color(0xffE0D9ED),
            fontSize: 24,
          ),
        ),
      ),
      buildDrawerItem(
        'BMI Calculator',
        Icons.calculate,
        () {
          Navigator.pushNamed(context, '/BMI');
        },
      ),
      buildDrawerItem(
        'Surprise',
        Icons.cake,
        () {
          Navigator.pushNamed(context, '/surprise');
        },
      ),
      buildDrawerItem(
        'Kalkulator',
        Icons.calculate,
        () {
          Navigator.pushNamed(context, '/calculator');
        },
      ),
      buildDrawerItem(
        'Konversi Suhu',
        Icons.wb_sunny,
        () {
          Navigator.pushNamed(context, '/temp');
        },
      ),
      buildDrawerItem(
        'Konversi Mata Uang',
        Icons.monetization_on,
        () {
          Navigator.pushNamed(context, '/currency');
        },
      ),
      Divider(),
      buildDrawerItem(
        'About', // Tambahkan menu About
        Icons.info,
        () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AboutPage()), // Rute ke halaman AboutPage
          );
        },
      ),
      Divider(),
      buildDrawerItem(
        'Logout',
        Icons.exit_to_app,
        () {
          _showLogoutConfirmation(context);
        },
      ),
    ],
  ),
),
    );
  }

  Widget buildDrawerItem(String title, IconData icon, Function() onPressed) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
        color: Color(0xff6441A5),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 16, color: Color(0xff6441A5)),
      ),
      onTap: onPressed,
    );
  }

  void _showLogoutConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Konfirmasi Logout',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          content: Text(
            'Apakah Anda ingin logout?',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Tidak',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                'Ya',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        );
      },
    );
  }
}
