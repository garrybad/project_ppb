import 'package:flutter/material.dart';
import 'package:project_ppb/styles/colors.dart';
import 'package:project_ppb/styles/text_style.dart';
import 'package:project_ppb/ui/berita_page.dart';
import 'package:project_ppb/ui/donasi_page.dart';
import 'package:project_ppb/ui/home_screen.dart';
import 'package:project_ppb/ui/pemerintah_page.dart';
import 'package:project_ppb/ui/profile_page.dart';
import 'package:project_ppb/ui/statistik_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static List<Widget> pages = [
    HomeScreen(),
    DonasiPage(),
    BeritaPage(),
    PemerintahPage(),
    StatistikPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgWhite,
      body: pages[_selectedIndex],
      bottomNavigationBar: _customBottomNav(),
    );
  }

  Widget _customBottomNav() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: kBgWhite,
        // borderRadius: BorderRadius.vertical(
        //     top: Radius.circular(15)
        // ),
        boxShadow: [BoxShadow(color: kGrey, blurRadius: 10)],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedLabelStyle: kCaption,
          unselectedLabelStyle: kCaption,
          selectedItemColor: kBgBlue,
          unselectedItemColor: kDarkGray,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/home.png',
                  width: 24,
                  color: _selectedIndex == 0 ? kBgBlue : kDarkGray,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/icons/donasi.png',
                    width: 24,
                    color: _selectedIndex == 1 ? kBgBlue : kDarkGray),
                label: 'Donasi'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/icons/berita.png',
                    width: 24,
                    color: _selectedIndex == 2 ? kBgBlue : kDarkGray),
                label: 'Berita'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/icons/pemerintah.png',
                    width: 24,
                    color: _selectedIndex == 3 ? kBgBlue : kDarkGray),
                label: 'Pemerintah'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/icons/statistik.png',
                    width: 24,
                    color: _selectedIndex == 4 ? kBgBlue : kDarkGray),
                label: 'Statistik'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/icons/profile.png',
                    width: 24,
                    color: _selectedIndex == 5 ? kBgBlue : kDarkGray),
                label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
