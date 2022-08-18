import 'package:flutter/material.dart';

class UsersModels {
  String name;
  String image;
  double balance;
  double lastSpend;
  Color modelColor;
  UsersModels({
    required this.name,
    required this.image,
    required this.balance,
    required this.lastSpend,
    required this.modelColor
  });
}

List<UsersModels>userModels=[
UsersModels(name: 'user1', image: 'assets/avater.png', balance: 185.0, lastSpend: 100.0, modelColor: Colors.yellowAccent),
  UsersModels(name: 'user2', image: 'assets/avater.png', balance: 350.0, lastSpend: 120.0, modelColor: Colors.red),
  UsersModels(name: 'user3', image: 'assets/avater.png', balance: 400.0, lastSpend: 250.0, modelColor: Colors.purple),
];