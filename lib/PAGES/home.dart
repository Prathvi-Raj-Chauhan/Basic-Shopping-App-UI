import 'package:flutter/material.dart';
import 'package:login_page_01/PAGES/Settings.dart';
import 'package:login_page_01/PAGES/cart.dart';
import 'package:login_page_01/PAGES/intro.dart';
import 'package:login_page_01/PAGES/shop.dart';
import 'package:login_page_01/components/Bottom_Nav_Bar.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {


  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    // Center(child: Text("Home Page Content")), // Replace home() with static content
    const shopPage(),
    const cartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: navbar(
        onTabChange: (index) => _navigateBottomBar(index),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(child: Image.asset('lib/IMAGES/nuke.png',)),
                const Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home', style: TextStyle(color: Colors.white),),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: ListTile(
                    leading: Icon(Icons.info),
                    title: Text('About', style: TextStyle(color: Colors.white),),
                  ),
                ),],
            ),
            const Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout', style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        )

      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: _pages[_selectedIndex],
      backgroundColor: Colors.grey[200],
    );
  }
}
