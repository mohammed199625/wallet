import 'package:flutter/material.dart';
import 'package:wallet/widgets/user_data_column.dart';
import '../models/users_model.dart';
import '../models/current_user_model.dart';
userData(width, height) {
 CurrentUsersModels balance=CurrentUsersModels(walletBalance:920.0 , lastActivity: 245.0);
  return Container(
    width: width / 2.4,
    height: height /3.5,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          width: width / 2.24,
          height: height / 4.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Container(
                width: width / 2.24,
                height: height / 12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black54,
                ),
                child: Center(child: Text('your wallet',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              ),

              Positioned(
                top: 90,
                left: 40,
                child: UserColumn(icon: Icons.wallet,balanceText: balance.walletBalance.toString(),spendText: 'last update 24/6',),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          width: width / 2.24,
          height: height / 4.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child:Stack(
            children: [
              Container(
                width: width / 2.24,
                height: height / 12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                child: Center(child: Text('last activity',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              ),

              Positioned(
                top: 90,
                left: 30,
                child: UserColumn(icon: Icons.sync_alt,balanceText:balance.lastActivity.toString(),spendText: 'transaction on 10/5',),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
