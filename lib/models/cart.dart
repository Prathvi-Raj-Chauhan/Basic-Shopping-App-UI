import 'dart:core';
import 'package:flutter/foundation.dart';
import 'shoe.dart';

class Cart extends ChangeNotifier{

  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(name: 'NUKE 1', price: '99', description: 'The forward-thinking design of signature shoe.', imagePath: 'lib/IMAGES/nike1.png'),
    Shoe(name: 'NUKE 2', price: '199', description: 'You\'ve got the air intake, feel and walk freely', imagePath: 'lib/IMAGES/nike2.png'),
    Shoe(name: 'NUKE 3', price: '499', description: 'Become Style ideal, see everyone copy you', imagePath: 'lib/IMAGES/nike3.png'),
    Shoe(name: 'NUKE 4', price: '299', description: 'Comfort and Style laced up together.', imagePath: 'lib/IMAGES/nike4.png'),
    Shoe(name: 'NUKE 5', price: '699', description: 'Get the hops and the speed-laced up in shoes that enhance your run', imagePath: 'lib/IMAGES/nike5.png'),
    Shoe(name: 'NUKE 6', price: '769', description: 'NUKE 5 enhanced like never seen before', imagePath: 'lib/IMAGES/nike6.png'),

  ];
  //list of items in the user cart
  List<Shoe> userCart = [];
  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  // get cart
  List<Shoe> getUserCart(){
    return userCart;
  }
  //adding and removing items from the cart
void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
}
void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
}
}