import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perfil/screen/home_page.dart';
import 'package:perfil/screen/journal_page.dart';
import 'package:perfil/screen/mensage_page.dart';
import 'package:perfil/screen/perfil/perfil_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  final List pages = [
    const HomePage(),
    const JournalPage(),
    const MensagePage(),
    const PerfilPage(),
  ];

  void _navBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navBar,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/journey_24px.svg"),
            label: "Jornadas",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/chat_24px.svg"),
            label: "Chatbot",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}
