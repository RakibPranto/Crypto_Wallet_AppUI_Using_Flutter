import 'package:crypto_trader/attatchment_crypto.dart';
import 'package:crypto_trader/buy_crypto.dart';
import 'package:crypto_trader/favourite_crypto.dart';
import 'package:crypto_trader/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBbar1 extends StatefulWidget {
  const NavBbar1({Key? key}) : super(key: key);

  @override
  State<NavBbar1> createState() => _NavBbar1State();
}

class _NavBbar1State extends State<NavBbar1> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const BuyCrypto(),
    const FavouriteCrypto(),
    const AttatchmentCrypto()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.blue,
              hoverColor: Colors.blue,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.blue,
              color: Colors.white,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  iconColor: Colors.black,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.shopping_bag_outlined,
                  iconColor: Colors.black,
                  text: 'Shop',
                ),
                GButton(
                  icon: Icons.favorite_outline,
                  iconColor: Colors.black,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.attach_file,
                  iconColor: Colors.black,
                  text: 'Add',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
