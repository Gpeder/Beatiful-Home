import 'package:flutter/material.dart';
import 'package:teste/componentes/buttons.dart';
import 'package:teste/telas/login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'WELCOME',
                    style: TextStyle(
                        color: Color(0xff303030),
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2),textAlign: TextAlign.start,
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 10,
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
                      labelText: 'Name',
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      controller: TextEditingController(),
                      labelText: 'Email',
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),CustomTextField(
                      controller: TextEditingController(),
                      labelText: 'Password',
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
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
                          'Already have account? SIGN IN',
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