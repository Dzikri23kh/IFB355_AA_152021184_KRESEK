import 'package:flutter/material.dart';
import 'package:flutter_application_project/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xff6441A5),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text("KRESEK",
              style: TextStyle(
                fontSize: 35,
                color: Colors.white
            
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: SizedBox(
                width: 360,
                height: 360,
                child: Image.asset('assets/images/kresek.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                width: 319,
                height: 54,
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                    child: Center(
                    child: Text("Let's Go", style: TextStyle(
                      color: Color(0xff6441A5)
                    ),),
                  ),
                  )
                  
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}