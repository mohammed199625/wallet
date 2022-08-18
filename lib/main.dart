import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:wallet/screens/login_screen.dart';

void main() async{
 WidgetsFlutterBinding.ensureInitialized();
 final keyApplicationId='hJR5zFVEcWMKFcXIjZ0a7GRwT7tk7bXGfmiNrFSA';
 final keyClientKey='s6qUsBd9WzWyKiaBHbQOJOKPKVk8JnAEA9l8GKiX';
 final keyParseServerUrl='https://parseapi.back4app.com';
 await Parse().initialize(keyApplicationId, keyParseServerUrl,
     clientKey: keyClientKey, debug: true);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home:  LoginScreen(),
    );
  }
}



