import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste/componentes/buttons.dart';
import 'package:teste/componentes/navbar.dart';
import 'package:teste/rootPage.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => RootPage()));

              },
              icon: Icon(CupertinoIcons.arrow_left, size: 30),
              color: Color(0xff808080)),
          SizedBox(width: 20),
          SizedBox(width: 10),
        ],
        iconTheme: IconThemeData(color: Color(0xff808080), size: 30),
        backgroundColor: Colors.transparent,
        title: ListTile(
          titleAlignment: ListTileTitleAlignment.top,
          contentPadding: EdgeInsets.only(left: 20),
          title: Text('Cart',
              style: TextStyle(color: Color(0xff242424), fontSize: 30)),
        ),
        toolbarHeight: 100,
      ),
      drawer: CustomSideBar(),
      body: Container(
        padding: EdgeInsets.only(top: 20,left: 20,right: 20,),
        child: ListView(
          children: [
            CustomCardCart(image: 'images/card1.png', title: 'Chair', price: '50.00',),
            Divider(thickness: 2, color: Color(0xffF0F0F0),),
            CustomCardCart(image: 'images/card2.png', title: 'Chair', price: '50.00',),
            Divider(thickness: 2, color: Color(0xffF0F0F0),),
            CustomCardCart(image: 'images/card3.png', title: 'Chair', price: '50.00',),
            Divider(thickness: 2, color: Color(0xffF0F0F0),),
            SizedBox(height: 20,),
            CustomPromoBar(),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Text('Total', style: TextStyle(color: Color(0xff303030), fontSize: 24, fontWeight: FontWeight.w600),),
                  Spacer(),
                  Text('\$ 150.00', style: TextStyle(color: Color(0xff303030), fontSize: 24, fontWeight: FontWeight.w600),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Botao(texto: 'Check out', width: double.infinity, onTap: () {},),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container CustomPromoBar() {
    return Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 0))
              ]
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: 'Promo Code',
                hintStyle: TextStyle(color: Color(0xff303030), fontSize: 16),
                suffixIcon: IconButton(
                  icon: Icon(CupertinoIcons.arrow_right, color: Color(0xff808080), size: 30,),
                  onPressed: () {},
                ),
              ),
            ),
          );
  }
}


class CustomCardCart extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  const CustomCardCart(
      {super.key,
      required this.image,
      required this.title,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 100,
          child: Image(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Color(0xff606060),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 150,),
                IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.clear_circled,),)
              ],
            ),
            Text(
              '\$ $price',
              style: TextStyle(
                  color: Color(0xff303030),
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.plus),),
                SizedBox(width: 10,),
                Text('1', style: TextStyle(color: Color(0xff606060), fontSize: 20),),
                SizedBox(width: 10,),
                IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.minus),),
              ],
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}