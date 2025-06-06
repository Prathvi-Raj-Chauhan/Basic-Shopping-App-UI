import 'package:flutter/material.dart';
import '../models/shoe.dart';

class showTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  showTile({super.key, required this.shoe, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25 ),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        //shoe pic
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagePath)
          ),
        //description
          Text(
            shoe.description,
            style: TextStyle(color: Colors.grey[600])
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(shoe.name,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                    Text('\$' + shoe.price, style: const TextStyle(color: Colors.grey),)
                  ]
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomRight: Radius.circular(12))),
                    child: Icon(Icons.add, color: Colors.white,),
                  ),
                )

              ],
            ),
          )
        //price + detail

        //button to add to cart
      ],),
    );
  }
}
