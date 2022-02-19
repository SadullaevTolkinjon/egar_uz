import 'package:flutter/material.dart';
import 'package:mobilecar/pages/asosiy_page.dart';
import 'package:mobilecar/pages/my_rental.dart';
import 'package:mobilecar/pages/profile_page.dart';
import 'package:mobilecar/pages/saved_page.dart';
import 'package:mobilecar/size_config/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
 
  int _currentIndex = 0;
  List _pages = [AsosiyPage(),MyRentalPage(),SavedPage(),ProfilePAge()];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:_pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        onTap: (val) {
          _currentIndex = val;
          setState(
            () {},
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/fonts/Vector.svg",
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/fonts/send.svg",
             
            ),
            label: "Trips",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/fonts/saved.svg",
            ),
            label: "Saved",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/fonts/profile.svg",
            ),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
