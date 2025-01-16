
import 'package:flutter/material.dart';
import 'package:teste/componentes/buttons.dart';

class CustomSideBar extends StatelessWidget {
  const CustomSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          CustomUser(name: 'Beltrano', imageAvatar: 'https://images.unsplash.com/photo-1735287367310-2648443f086f?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', email: 'dwdwdwd@gwfwfwf',),
          SizedBox(height: 20,),
          MenuItens(title: 'Profile', icon: Icons.person, onTap: (){}),
          SizedBox(height: 20,),
          MenuItens(title: 'Payments', icon: Icons.credit_card, onTap: (){}),
          SizedBox(height: 20,),
          MenuItens(title: 'Settings', icon: Icons.settings, onTap: (){}),
          SizedBox(height: 20,),
          MenuItens(title: 'Help', icon: Icons.chat_bubble_outline, onTap: (){}),
          SizedBox(height: 20,),
          MenuItens(title: 'Privacy policy', icon: Icons.privacy_tip, onTap: (){}),
          SizedBox(height: 20,),
          Divider(),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Botao(texto: 'Logout',width: 200, onTap: (){}),
          ),
        ],
      ),
    );
  }
}

class CustomUser extends StatelessWidget {
  final String name;
  final String email;
  final String imageAvatar;
  
  const CustomUser({
    super.key, required this.name, required this.email, required this.imageAvatar,
  });

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
    currentAccountPicture: CircleAvatar(
      child: ClipOval(
        child: Image.network(imageAvatar, width: 90, height: 90, fit: BoxFit.cover,),
      ),
    ),
    decoration: BoxDecoration(
      color: Colors.blue,
      image: DecorationImage(
      image: NetworkImage('https://images.unsplash.com/photo-1735287367310-2648443f086f?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),//Imagem meramente ilustrativa
      fit: BoxFit.cover)
    ),
    accountName: Text(name, style: TextStyle(fontSize: 20),),
    accountEmail: Text(email, style: TextStyle(fontSize: 15),),
    );
  }
}

class MenuItens extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const MenuItens({super.key, required this.title, required this.icon, required this.onTap});


  @override
  Widget build(BuildContext context) {
    return 
          ListTile(
            contentPadding: EdgeInsets.only(left: 20),
            titleAlignment: ListTileTitleAlignment.center,
            leading: Icon(icon, size: 30,),
            title: Text(title, style: TextStyle(fontSize: 20),),
            onTap: onTap,
          );
  }
}