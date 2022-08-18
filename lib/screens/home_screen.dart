import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:wallet/screens/login_screen.dart';

import '../widgets/user_data.dart';
import '../widgets/users_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({required this.userName});
  late final String userName;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFA726),
          elevation: 0,
          actions: [
            Icon(Icons.notifications_none),
            InkWell(
              onTap: ()async{
    final user = await ParseUser.currentUser() as ParseUser;
    var response = await user.logout();

    if (response.success) {
  print('success');
Navigator.of(context).pop(LoginScreen());
    } else {
   print('error');
    }

              },
              child: Icon(Icons.exit_to_app),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/backgound2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/avater.png',
                    ),
                    radius: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.userName,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
              userData(width, height),
              Center(
                child: Container(
                  width: 350,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Test',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              users(height, width),
            ],
          ),
        ),
      ),
    );
  }
}
