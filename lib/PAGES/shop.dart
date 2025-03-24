import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoe_Tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';
class shopPage extends StatefulWidget {
  const shopPage({super.key});

  @override
  State<shopPage> createState() => _shopPageState();
}


class _shopPageState extends State<shopPage> {
  //adding shoe to cart method
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(context: context, builder: (context) => AlertDialog(title: Text('Successfully Added !'),));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.circular(15)),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search'),
              Icon(Icons.search),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Be Legendary !', style: TextStyle(color: Colors.grey),),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text('Trending Now !',style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              Text('See All', style: TextStyle(color: Colors.blue),)
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              //create a shoe
              //get a shoe from shop list
              Shoe shoe = value.getShoeList()[index];
              return showTile(
                shoe: shoe,
                onTap: () => addShoeToCart(shoe),
              );
            },
          ),
        ),
        Padding(

          padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25,),
          child: Divider(color: Colors.white,),
        )
      ],
    ),);
  }
}
