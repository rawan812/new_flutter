import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ShoppingContainer extends StatelessWidget {
  const ShoppingContainer({Key? key}) : super(key: key);
static String id = 'ShoppingContainer';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
         children:<Widget> [
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Container(
               height:200 ,
               width:175 ,
               decoration:BoxDecoration(
                 borderRadius:BorderRadius.circular(10) ,
                 image:DecorationImage(
                   fit:BoxFit.cover ,
                image:AssetImage('assets/images/Mask Group.png'),
                ),

               ) ,


             ),
           ),
           Positioned(
             top:367 ,
            left: 137,
             child:Container(

               height:30 ,
               width:30 ,
               child:Icon(Icons.shopping_bag,color:Colors.black26 ,) ,

              color:Colors.grey ,

             ) ,

           ),

         ],




        ),
        Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            Text('Minimal Stand',style:TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
            Text('\$ 25.00',style:TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),

          ],
        )
      ],
    );
  }
}
