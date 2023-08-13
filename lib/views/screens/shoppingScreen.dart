import 'package:flutter/material.dart';
import 'package:new_flutter/widgets/listView.dart';
import 'package:new_flutter/widgets/shoppingCountainer.dart';
class shoppingSreen extends StatefulWidget {
static String id = 'shopingScreen';
  @override
  _shoppingSreenState createState() => _shoppingSreenState();
}

class _shoppingSreenState extends State<shoppingSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      body:SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
              children: [
                Icon(Icons.search,color:Colors.black45 ,),
                SizedBox(width:30 ,),
                Column(
                  children: [
                    Text('Make home',style:TextStyle(fontSize:18,fontWeight: FontWeight.w400,color:Color(0XFF909090)  ) ,),
                    Text('BEAUTIFUL',style:TextStyle(fontSize:18,fontWeight: FontWeight.w600,color:Color(0XFF242424)  ) ,)
                  ],

                ),
                SizedBox(width:30 ,),
                Icon(Icons.shopping_cart_outlined,color:Colors.black45 ,),






              ],



            ),
            Expanded(
              child: ListView.builder(
                  itemCount:6 ,

                  scrollDirection:Axis.horizontal ,

                  itemBuilder:(context,index){
                    return ListViewWidget();

                  }


                  ),
            ),
            Expanded(
              child: GridView.builder(
              itemCount:4 ,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                    mainAxisSpacing:14,
                    crossAxisSpacing:14,
                    childAspectRatio: 157/200,  // Width-to-height aspect ratio


                  ),


                  itemBuilder: (context,index){
                     return ShoppingContainer();



                  }




              ),
            ),




          ],




        ),
      ),









    );
  }
}
