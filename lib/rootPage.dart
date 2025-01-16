// ignore: file_names
import 'package:flutter/material.dart';
import 'package:teste/componentes/appbar.dart';
import 'package:teste/telas/home.dart';
import 'package:teste/telas/profile.dart';
import 'package:teste/telas/saved.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
final contoler = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: contoler,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          Home(),
          Saved(),
          Profile(),
        ],
      ),
      bottomNavigationBar: CustomAppBar(onTap: (value) {
        contoler.jumpToPage(value);
      }),
    );
  }
}