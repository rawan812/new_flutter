import 'package:flutter/material.dart';
import 'package:new_flutter/widgets/listView.dart';
class shoppingScreen2 extends StatefulWidget {
  const shoppingScreen2({Key? key}) : super(key: key);
static String id ='shoppingScreen2';
  @override
  _shoppingScreen2State createState() => _shoppingScreen2State();
}

class _shoppingScreen2State extends State<shoppingScreen2> {
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

          ],





        ),
      ) ,




    );
  }
}
