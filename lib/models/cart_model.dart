import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //the list of items
  final _shopItems = [
    ["Avocado", "5.00", "assets/images/avocado.png", Colors.green],
    ["Banana", "7.00", "assets/images/banana.png", Colors.yellow],
    ["Chicken", "105.00", "assets/images/chicken.png", Colors.brown],
    ["Water", "14.00", "assets/images/water.png", Colors.blue],
  ];

  //list of cart items
  List _cartItems = [];
 get shopItems => _shopItems;
  get cartItems => _cartItems;
  //add item to the cart
  
  void addItems(int index) {
    _cartItems.add(shopItems[index]);
    notifyListeners();
  }

  //remove item from the cart.
  void removeItems(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate the total in the cart
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }

    return totalPrice.toStringAsFixed(2);
  }

  
}
