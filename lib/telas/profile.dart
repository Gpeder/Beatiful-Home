import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste/rootPage.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTitleBar(),
            SizedBox(
              height: 30,
            ),
            CustomUser(
              avatar:
                  'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmV0cmF0b3xlbnwwfHwwfHx8MA%3D%3D',
              name: 'Beltrano',
              email: 'beltrano@beltrano',
            ),
            SizedBox(height: 30,),
            CustomProfileCard(
              title: 'My Orders',
              subtitle: 'View all orders',
            ),
            SizedBox(height: 20,),
            CustomProfileCard(
              title: 'Shipping Addresses',
              subtitle: '03 Addresses',
            ),
            SizedBox(height: 20,),
            CustomProfileCard(
              title: 'Payment Method',
              subtitle: 'You have 2 cards',
            ),
            SizedBox(height: 20,),
            CustomProfileCard(
              title: 'My reviews',
              subtitle: 'Reviews for 5 items',
            ),
            SizedBox(height: 20,),
            CustomProfileCard(
              title: 'Setting', 
              subtitle: 'Notification, Password, FAQ, Contact',
              ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}

class CustomTitleBar extends StatelessWidget {
  const CustomTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => RootPage()));
            },
            child: Image(
              image: AssetImage('images/logo.png'),
              height: 40,
            ),
          ),
          Text(
            'Profile',
            style: TextStyle(
                color: Color(0xff303030),
                fontSize: 28,
                fontWeight: FontWeight.w600),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.square_arrow_right, size: 30),
            color: Color(0xff808080),
          )
        ],
      ),
    );
  }
}

class CustomUser extends StatelessWidget {
  final String avatar;
  final String name;
  final String email;
  const CustomUser(
      {super.key,
      required this.avatar,
      required this.name,
      required this.email});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
            radius: 50,
            child: ClipOval(
              child: Image.network(
                avatar,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            )),
        SizedBox(
          width: 20,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            email,
            style: TextStyle(fontSize: 15),
          )
        ])
      ],
    );
  }
}

class CustomProfileCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomProfileCard(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 0))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Color(0xff303030),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                subtitle,
                style: TextStyle(
                    color: Color(0xff808080),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.arrow_right, size: 30),
            color: Color(0xff808080),
          )
        ],
      ),
    );
  }
}
