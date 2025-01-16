import 'package:flutter/material.dart';
import 'package:teste/componentes/buttons.dart';
import 'package:teste/telas/login.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage('images/bg.png'),
            fit: BoxFit.cover
          )
        ),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            SizedBox(height: 50,),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('MAKE YOUR', style: TextStyle(color: Color(0xff606060), fontSize: 24, fontWeight: FontWeight.w500),),
              subtitle: Text('HOME BEAUTIFUL', style: TextStyle(color: Color(0xff303030), fontSize: 34, fontWeight: FontWeight.w600, letterSpacing: 2),),
            ),
            
            Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text('The best simple place where you discover most wonderful furnitures and make your home beautiful', style: TextStyle(fontSize: 18, color: Color(0xff808080),letterSpacing: 1,),),
            ),
            SizedBox(height: 50,),
          Container(
            alignment: Alignment.center,
            child: Botao(texto: 'GET STARTED', width: 300, onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
            },)
            ),
          ],
        ),
      ),
    );
  }
}