import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste/componentes/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: CustomSideBar(),
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.cart), color: Color(0xff808080)),
          SizedBox(width: 20),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search), color: Color(0xff808080)),
          SizedBox(width: 10),
        ],
        iconTheme: IconThemeData(color: Color(0xff808080), size: 30),
        backgroundColor: Colors.transparent,
        title: ListTile(
          titleAlignment: ListTileTitleAlignment.top,
          contentPadding: EdgeInsets.only(left: 20),
          subtitle: Text('Beautiful', style: TextStyle(color: Color(0xff242424), fontSize: 30)),
          title: Text('Make Home', style: TextStyle(color: Color(0xff909090), fontSize: 20)),
        ),
        toolbarHeight: 100,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10,left: 10 ,right: 10),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(height: 20),
            CustomSingleScroll(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(title: 'Minimal Stand', price: '12.00', image: 'images/item1.png', icon: Icons.bookmark_border, filledIcon: Icons.bookmark, onTap: () {  },),
                CustomCard(title: 'Coffe Chair', price: '25.00', image: 'images/item2.png', icon: Icons.bookmark_border,filledIcon: Icons.bookmark, onTap: () {  },),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(title: 'Simple Desk', price: '50.00', image: 'images/item3.png', icon: Icons.bookmark_border,filledIcon: Icons.bookmark, onTap: () {  },),
                CustomCard(title: 'Black Simple Lamp', price: '25.00', image: 'images/item4.png', icon: Icons.bookmark_border,filledIcon: Icons.bookmark, onTap: () {  },),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSingleScroll extends StatelessWidget {
  const CustomSingleScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 10),
          CardSection(title: 'Popular', image: 'images/star 1.png', onTap: () {  },),
          SizedBox(width: 20),
          CardSection(title: 'Chair', image: 'images/cadeira.png', onTap: () {  },),
          SizedBox(width: 20),
          CardSection(title: 'Table', image: 'images/mesa.png', onTap: () {  },),
          SizedBox(width: 20),
          CardSection(title: 'Armchair', image: 'images/sofa.png', onTap: () {  },),
          SizedBox(width: 20),
          CardSection(title: 'Bed', image: 'images/cama.png', onTap: () {  },),
          SizedBox(width: 20),
          CardSection(title: 'Lamp', image: 'images/lamp.png', onTap: () {  },),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}

class CardSection extends StatelessWidget {
  final String title;
  final String image;
  final Function() onTap;

  const CardSection({super.key, required this.title, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffF5F5F5),
            ),
            child: Image(image: AssetImage(image),),
          ),
          SizedBox(height: 10),
          Text(title, style: TextStyle(color: Color(0xff303030), fontSize: 16)),
        ],
      ),
    );
  }
}



class CustomCard extends StatefulWidget {
  final String title;
  final String price;
  final String image;
  final IconData icon;
  final IconData filledIcon;
  final Function() onTap;

  const CustomCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.icon,
    required this.filledIcon, required this.onTap,
  });

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isFilled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        isFilled = !isFilled;
                      });
                    },
                    icon: Icon(
                      isFilled ? widget.filledIcon : widget.icon,
                      color: Color(0xffEB001B),
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    color: Color(0xff606060),
                    fontSize: 20,
                  ),
                ),
                Text(
                  '\$ ${widget.price}',
                  style: TextStyle(
                    color: Color(0xff303030),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}