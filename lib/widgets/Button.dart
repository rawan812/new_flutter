import 'package:flutter/material.dart';
class socialMediaButton extends StatefulWidget {
  String?image;
  String?text;
  Color?color;
  socialMediaButton({this.image,this.text,this.color});
  @override
  _socialMediaButtonState createState() => _socialMediaButtonState();
}

class _socialMediaButtonState extends State<socialMediaButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color:widget.color ,
      height:42 ,
      width:344 ,
child:Row(
  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
  children: [
Padding(
  padding: const EdgeInsets.only(left: 16.0),
  child:   Image.asset(widget.image!,fit:BoxFit.contain ,height:20,width: 20 ,),
),
Padding(
  padding: const EdgeInsets.only(right:137 ),
  child:   Text(widget.text!,style:TextStyle(fontSize:16,color:Colors.white  ) ,),
)


  ],
) ,




    );
  }
}
