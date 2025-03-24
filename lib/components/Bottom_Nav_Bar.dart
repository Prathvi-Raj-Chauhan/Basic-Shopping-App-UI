import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class navbar extends StatelessWidget {
  void Function(int)? onTabChange;
   navbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GNav(
          color: Colors.grey,
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          mainAxisAlignment: MainAxisAlignment.center,
          tabBackgroundColor: Colors.grey.shade100,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(icon: Icons.home, text: 'Shop'),
            GButton(icon: Icons.shopping_bag_rounded, text: 'Cart'),
          ],
        ),
      ),
    );
  }
}
