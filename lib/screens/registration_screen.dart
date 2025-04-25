import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF743BD1),
      appBar: AppBar(
        backgroundColor: Color(0xFF743BD1),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.chevron_left, color: Color(0xFF743BD1)),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              shape: CircleBorder(),
              fixedSize: Size(44, 44),
              padding: EdgeInsets.zero,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Регистрация',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
            fontFamily: 'Roboto', // Добавьте шрифт
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column(
            children: [
              _buildInputField('Фамилия', 'Введите вашу фамилию'),
              SizedBox(height: 8),
              _buildInputField('Имя', 'Введите ваше имя'),
              SizedBox(height: 8),
              _buildInputField(
                'Номер телефона',
                'Укажите номер телефона',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 8),
              _buildPasswordField(),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    // Тут логика отправки данных
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    'Зарегистрироваться',
                    style: TextStyle(
                      color: Color(0xFF743BD1),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto', // Добавьте шрифт
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(
    String label,
    String hint, {
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 0.7),
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            fontFamily: 'Roboto', // Добавьте шрифт
          ),
        ),
        SizedBox(height: 6),
        TextField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.7),
              fontFamily: 'Roboto',
            ), // Добавьте шрифт
            filled: true,
            fillColor: Color(0xFF743BD1),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white, width: 0.93),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white, width: 0.93),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white, width: 0.93),
            ),
          ),
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            fontFamily: 'Roboto', // Добавьте шрифт
          ),
          cursorColor: Colors.white,
        ),
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Пароль',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 0.7),
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            fontFamily: 'Roboto', // Добавьте шрифт
          ),
        ),
        SizedBox(height: 6),
        TextField(
          obscureText: _obscurePassword,
          decoration: InputDecoration(
            hintText: 'Придумайте пароль',
            hintStyle: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.7),
              fontFamily: 'Roboto',
            ), // Добавьте шрифт
            filled: true,
            fillColor: Color(0xFF743BD1),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white, width: 0.93),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white, width: 0.93),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white, width: 0.93),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility : Icons.visibility_off,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            fontFamily: 'Roboto', // Добавьте шрифт
          ),
          cursorColor: Colors.white,
        ),
      ],
    );
  }
}
