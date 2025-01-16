import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste/componentes/navbar.dart';

class Saved extends StatelessWidget {
  const Saved({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomSideBar(),
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.cart),
              color: Color(0xff808080)),
          SizedBox(width: 20),
          SizedBox(width: 10),
        ],
        iconTheme: IconThemeData(color: Color(0xff808080), size: 30),
        backgroundColor: Colors.transparent,
        title: ListTile(
          titleAlignment: ListTileTitleAlignment.top,
          contentPadding: EdgeInsets.only(left: 20),
          title: Text('Saved',
              style: TextStyle(color: Color(0xff242424), fontSize: 30)),
        ),
        toolbarHeight: 100,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          children: [
            CustomCardSave(
                image: 'images/card1.png',
                title: 'Minimal Lamp',
                price: '12.00'),
            Divider(
              thickness: 1,
              color: Color(0xffF0F0F0),
            ),
            CustomCardSave(
                image: 'images/card2.png',
                title: 'Minimal Desk',
                price: '50.00'),
            Divider(
              thickness: 1,
              color: Color(0xffF0F0F0),
            ),
            CustomCardSave(
                image: 'images/card3.png',
                title: 'Minimal Stand',
                price: '25.00'),
            Divider(
              thickness: 1,
              color: Color(0xffF0F0F0),
            ),
            CustomCardSave(
                image: 'images/card4.png',
                title: 'Coffee Chair',
                price: '25.00'),
            Divider(
              thickness: 1,
              color: Color(0xffF0F0F0),
            ),
            CustomCardSave(
                image: 'images/card5.png',
                title: 'Coffe table',
                price: '50.00'),
            Divider(
              thickness: 1,
              color: Color(0xffF0F0F0),
            ),
            
          ],
        ),
      ),
    );
  }
}

class CustomCardSave extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  const CustomCardSave(
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
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Color(0xff606060),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '\$ ${price}',
              style: TextStyle(
                  color: Color(0xff303030),
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
        Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.clear_circled,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bag)),
          ],
        )
      ],
    );
  }
}
