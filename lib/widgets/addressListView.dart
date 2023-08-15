import 'package:flutter/material.dart';
class addressListView extends StatefulWidget {
static String id = 'addressListView';
bool ?isSelected;
VoidCallback? onPressed;
Color?color;
bool?value;
addressListView({this.isSelected,this.onPressed,this.color,this.value});
  @override
  _addressListViewState createState() => _addressListViewState();
}

class _addressListViewState extends State<addressListView> {
  String selectedCheckbox = '';

  void _onCheckboxChanged(String checkboxValue) {
    setState(() {
      selectedCheckbox = checkboxValue;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children:[
            Checkbox(value: selectedCheckbox == 'checkbox1',onChanged: (newValue) {
              setState(() {
        _onCheckboxChanged('checkbox1');
          });
            }
              ),
              CheckboxListTile(
                value: selectedCheckbox == 'checkbox2',
                onChanged: (newValue) {
                  _onCheckboxChanged('checkbox2');
                },
              ),
              CheckboxListTile(
                value: selectedCheckbox == 'checkbox3',
                onChanged: (newValue) {
                  _onCheckboxChanged('checkbox3');
                },
              ),

               Text('Use as the shipping address',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w400),)



            ],




          ),
        ),
        InkWell(
          onTap:widget.onPressed ,
          child: Container(
            height:127 ,
            width:335 ,
            decoration:BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // Offset in the horizontal and vertical directions
                ),
              ],
                borderRadius:BorderRadius.circular(10) ,
              color:widget.color, // Change color if selected
            ) ,
            child:Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:16,left: 16,right: 16 ),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      Text('Bruno Fernandes',style:TextStyle(fontSize: 18,fontWeight:FontWeight.w400)),
                      Container(
                          height: 24,
                          width: 24,

                          child: Image.asset('assets/images/edit-2.png'))
                    // Icon(Icons.edit),
                    ],



                  ),
                ),
                Divider(thickness:1 ,),
                Padding(
                  padding: const EdgeInsets.only(left:16 ),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.start ,
                    children: [
                      Text('25 rue Robert Latouche, Nice, 06200, Côte\n\nD’azur, France',style:TextStyle(color:Colors.grey ) ,),
                    ],
                  ),
                )


              ],



            ) ,

          ),
        ),



      ],




    );
  }
}
