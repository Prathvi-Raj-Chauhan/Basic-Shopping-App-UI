import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';
import '../models/cart.dart';
import '../models/shoe.dart';
class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //heading
          const Text('My Cart', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
          const SizedBox(height: 10),
          Expanded(child: ListView.builder(itemCount: value.getUserCart().length, itemBuilder: (context, index){
            // get individual shoe
            Shoe individualShoe = value.getUserCart()[index];

            //return cart item
            return CartItem(shoe: individualShoe,);
          }))
        ],
      ),
    );
  }
}
