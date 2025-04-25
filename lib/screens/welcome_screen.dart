import 'package:flutter/material.dart';
import 'package:reg_auth/screens/registration_screen.dart';
import 'package:reg_auth/screens/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF743BD1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 191),
            Image.asset('assets/logo.png', width: 117, height: 99),
            SizedBox(height: 97),
            const Text(
              'Добро пожаловать!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 0.5,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Приветствуем вас на площадке аренды строительной техники',
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 74),

            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.white, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                fixedSize: Size(343, 60),
                padding: EdgeInsets.zero,
              ),
              child: Text(
                'Регистрация',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 10),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                'У меня уже есть аккаунт',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),

            SizedBox(height: 63),

            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.white, width: 1.56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(39.07),
                ),
                fixedSize: Size(168, 34),
                padding: EdgeInsets.zero,
              ),
              child: Text(
                'Магазин автозапчастей',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 13),

            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Container(
                width: 134,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
