import 'package:flutter/material.dart';
import 'package:new_flutter/views/screens/addressScreen.dart';
import 'package:new_flutter/views/screens/joinScreen.dart';
import 'package:new_flutter/views/screens/my%20orders.dart';
import 'package:new_flutter/views/screens/shoppingScreen.dart';
import 'package:new_flutter/views/screens/shoppingScreen2.dart';
void main(){
  runApp(MyApp());


}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: addressScreen(),


    );
  }
}
