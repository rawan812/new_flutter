import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
static String id = 'ListView';
 bool ?isSelected;
VoidCallback? onPressed;
ListViewWidget({this.isSelected,this.onPressed});
  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap:widget.onPressed ,
        child: Column(
          children: [
            Container(
                 height:44 ,
              width: 44,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  color:widget.isSelected!? Colors.black: Colors.grey[300], // Change color if selected
                  image:DecorationImage(
                  image:AssetImage('assets/images/sofa 1.png')

  )

),



            ),
            Text('Armchair',style: TextStyle(color:widget.isSelected!? Colors.black : Colors.grey, // Change color if selected
            ),)
          ],
        ),
      ),
    );



  }
}
