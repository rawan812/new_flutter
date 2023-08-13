import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);
static String id = 'ListView';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
             height:44 ,
          width: 44,
decoration:BoxDecoration(
  image:DecorationImage(
    image:AssetImage('assets/images/ArmChair.png')

  )

),



        ),
        Text('Armchair')
      ],
    );



  }
}
