import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Airforce', 
      price: '236', 
      description: 'The forward-thinking design of his latest shoe ', 
      imagePath: 'img/Airforce.jpeg',
      ),

     Shoe(
      name: 'Airjordan', 
      price: '260', 
      description: 'The reflexes with the shoe are dope ', 
      imagePath: 'img/Airjordan.jpeg',
      ),

      Shoe(
      name: 'Blackwhite', 
      price: '270', 
      description: 'Feel the nightness of the shoe ', 
      imagePath: 'img/blackwhite.jpeg',
      ),

      Shoe(
      name: 'Ndula', 
      price: '230', 
      description: 'keeping it Cool and Simple ', 
      imagePath: 'img/Ndula.jpeg',
      ), 
  ];

  List<Shoe> userCart = [];



  List<Shoe> getShoelist() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return shoeShop;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(Shoe);
    notifyListeners();
  }
}