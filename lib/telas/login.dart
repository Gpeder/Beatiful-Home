import 'package:flutter/material.dart';
import 'package:teste/componentes/buttons.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 80, right: 20, bottom: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCustomLine(),
                Image(
                  image: AssetImage('images/logo.png'),
                  width: 100,
                ),
                _buildCustomLine(),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'MAKE YOUR',
                  style: TextStyle(
                      color: Color(0xff606060),
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'HOME BEAUTIFUL',
                  style: TextStyle(
                      color: Color(0xff303030),
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                padding:
                    EdgeInsets.only(top: 20, right: 30, bottom: 20, left: 10),
                decoration: BoxDecoration(color: Color(0xffffffff), boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 0))
                ]),
                child: Column(
                  children: [
                    CustomTextField(
                      controller: TextEditingController(),
                      labelText: 'Email',
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      controller: TextEditingController(),
                      labelText: 'Password',
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Color(0xff303030),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    Botao(texto: 'Login', width: double.infinity, onTap: () {}),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'SING UP',
                          style: TextStyle(
                              color: Color(0xff303030),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomLine() {
    return Container(
      width: 100,
      height: 2,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String labelText;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.controller,
    this.validator,
    required this.labelText,
    this.keyboardType,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: obscureText
            ? IconButton(
                icon: Icon(Icons.visibility),
                onPressed: () {},
              )
            : null,
        labelText: labelText,
        labelStyle: TextStyle(color: Color(0xff909090)),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE0E0E0)),
        ),
      ),
      keyboardType: keyboardType,
    );
  }
}
