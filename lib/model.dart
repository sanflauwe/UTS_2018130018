import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items on sale
  final List _shopItems = const [
    //[ itemName, itemPrice, imagePath, color]
    ["Maki", "15000", "assets/images/maki.png", Colors.amber],
    ["Oden", "20000", "assets/images/oden.png", Colors.amber],
    ["Roll", "15000", "assets/images/roll.png", Colors.amber],
    ["Sushi", "30000", "assets/images/sushi.png", Colors.amber],
    ["Tamagoyaki", "20000", "assets/images/tamagoyaki.png", Colors.amber],
    ["Yakiniku", "50000", "assets/images/yakiniku.png", Colors.amber],
  ];

  //List of cart items
  final List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
