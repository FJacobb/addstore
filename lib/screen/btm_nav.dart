import 'package:addstore/screen/cart.dart';
import 'package:addstore/screen/categories.dart';
import 'package:addstore/screen/home.dart';
import 'package:addstore/screen/user.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BtmNav extends StatefulWidget {
  const BtmNav({super.key});

  @override
  State<BtmNav> createState() => _BtmNavState();
}

class _BtmNavState extends State<BtmNav> {
  List _pages = [Home(), Categories(), Cart(), UserProfile()];
  var _startpage = 0;
  void changePage(int index) {
    setState(() {
      _startpage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: _startpage,
        onTap: changePage,
        items: [
          Icon(Icons.add, size: 20),
          Icon(Icons.list, size: 20),
          Icon(Icons.compare_arrows, size: 20),
          Icon(Icons.add, size: 20),
        ],
        labels: ["Home", "Category", "Cart", "Profile"],
      ),
      body: _pages[_startpage],
    );
  }
}
