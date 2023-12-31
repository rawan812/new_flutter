import 'package:flutter/material.dart';
import 'package:new_flutter/widgets/addressListView.dart';
class addressScreen extends StatefulWidget {
  const addressScreen({Key? key}) : super(key: key);
static String id = 'addressScreen';
  @override
  _addressScreenState createState() => _addressScreenState();
}

class _addressScreenState extends State<addressScreen> {

  int _selectedIndex = -1;
  String selectedbox = '';


  String selectedCheckbox = '';

  void _onCheckboxChanged(String checkboxValue) {
    setState(() {
      selectedCheckbox = checkboxValue;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      body:SafeArea(
        child: Column(
          children: [
            AppBar(
              backgroundColor:Colors.white ,
              elevation:0 ,
              leading:Icon(Icons.arrow_back_ios,color:Color(0XFF303030) ) ,

              title:Padding(
                padding: const EdgeInsets.only(left:70 ),
                child: Text('Shipping address',style:TextStyle(fontSize: 16,fontWeight:FontWeight.w700,color:Color(0XFF303030)  ) ,),
              ) ,




            ),
          Column(
            children: [
              Row(
                children: [
                  Text('Use as the shipping address',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w400),),


                  Checkbox(value: selectedCheckbox == 'checkbox1',onChanged: (newValue) {
                    setState(() {
                      _onCheckboxChanged('checkbox1');
                    });
                  }
                  ),
                ],
              ),
              addressListView(
                color: _selectedIndex == 2 ? Colors.grey[100] : Colors.white,

                onPressed: () {
                  setState(() {
                    if (_selectedIndex == 2) {
                      _selectedIndex = -1;
                    } else {
                      _selectedIndex = 2;
                    }
                  });
                },




              ),
              Row(
                children: [
                  Text('Use as the shipping address',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w400),),
                  Checkbox(value: selectedCheckbox == 'checkbox2',onChanged: (newValue) {
                    setState(() {
                      _onCheckboxChanged('checkbox2');
                    });
                  }
                  ),
                ],
              ),

              addressListView(
                color: _selectedIndex == 2 ? Colors.grey[100] : Colors.white,

                onPressed: () {
                  setState(() {
                    if (_selectedIndex == 2) {
                      _selectedIndex = -1;
                    } else {
                      _selectedIndex = 2;
                    }
                  });
                },




              ),


              Row(
                children: [
                  Text('Use as the shipping address',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w400),),

                  CheckboxListTile(
                    value: selectedCheckbox == 'checkbox3',
                    onChanged: (newValue) {
                      _onCheckboxChanged('checkbox3');
                    },
                  ),
                ],
              ),
              addressListView(
                color: _selectedIndex == 2 ? Colors.grey[100] : Colors.white,

                onPressed: () {
                  setState(() {
                    if (_selectedIndex == 2) {
                      _selectedIndex = -1;
                    } else {
                      _selectedIndex = 2;
                    }
                  });
                },




              ),
            ],
          ),

         /*   Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder:(context,index){

                return addressListView(
             color: _selectedIndex == index ? Colors.grey[100] : Colors.white,

                  onPressed: () {
                   setState(() {
                  if (_selectedIndex == index) {
                  _selectedIndex = -1;
                 } else {
                  _selectedIndex = index;
                   }
                  });
                     },




                );



              }),
            ),*/

           Padding(
             padding: const EdgeInsets.all(16.0),
             child: Row(
               mainAxisAlignment:MainAxisAlignment.end ,
               children: [
                 FloatingActionButton(
                     child:Icon(Icons.add,color:Colors.black54 ,) ,
                     backgroundColor:Colors.white ,
                     onPressed:(){




                 }),
               ],
             ),
           )


          ],




        ),
      ) ,



    );
  }
}
