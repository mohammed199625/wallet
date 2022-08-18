import 'package:flutter/material.dart';

class UserColumn extends StatelessWidget{
  late final IconData icon;
  late final String balanceText;
  late final String spendText;
  UserColumn({required this.icon,required this.balanceText,required this.spendText});

  @override
  Widget build(BuildContext context) {
return Center(
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon),
      Text(balanceText),
      Text(spendText),
    ],
  ),
);
  }

}