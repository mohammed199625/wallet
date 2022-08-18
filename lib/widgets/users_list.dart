import 'package:flutter/material.dart';

import '../models/users_model.dart';

users(width, height) {
  return Container(
    width: width / 2.4,
    height: height / 1.6,
    child: ListView.builder(
        itemCount: userModels.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          UsersModels model = userModels[index];
          return GestureDetector(
            onTap: () {},
            child: Container(
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
                    height: height / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: model.modelColor,
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            model.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          Text(
                            'Total spending',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 1,
                    left: 110,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        model.image,
                      ),
                      radius: 40,
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'EGP ${model.balance.toString()}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('last spend 24/6'),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }),
  );
}
