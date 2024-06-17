import 'package:flutter/material.dart';
import 'package:saving_app_pertemuan6_7_saving_app/styles/colors.dart';
import 'package:saving_app_pertemuan6_7_saving_app/styles/text_style.dart';

import 'home/home_page.dart';
import 'portofolio/portofolio_page.dart';
import 'profile/profile_page.dart';
import 'support/support_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static const nameRoute = '/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static List<Widget> pages = [
    HomePage(),
    PortofolioPage(),
    SupportPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: pages[_selectedIndex],
      bottomNavigationBar: _costumBottomNav(),
    );
  }

  Widget _costumBottomNav(){
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: kGrey,
            blurRadius: 10,
          )
        ]),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedLabelStyle: kCaption,
          unselectedLabelStyle: kCaption,
          selectedItemColor: kBlueRibbon,
          unselectedItemColor: kDarkgrey,
          items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home.png',
               width: 24,
               color: _selectedIndex == 0 ? kBlueRibbon : kDarkgrey,
               ),
               label: 'Home'),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/portofolio.png',
               width: 24,
               color: _selectedIndex == 0 ? kBlueRibbon : kDarkgrey,
               ),
               label: 'Portofolio'),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/support.png',
               width: 24,
               color: _selectedIndex == 0 ? kBlueRibbon : kDarkgrey,
               ),
               label: 'Support'),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/profile.png',
               width: 24,
               color: _selectedIndex == 0 ? kBlueRibbon : kDarkgrey,
               ),
               label: 'Profile')
        ],),
      ),
    );
  }
}