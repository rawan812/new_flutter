
import 'package:flutter/material.dart';
import 'package:new_flutter/widgets/Button.dart';
class joinScreen extends StatefulWidget {
   joinScreen({Key? key}) : super(key: key);
static String id ='joinScreen';

  @override
  _joinScreenState createState() => _joinScreenState();
}

class _joinScreenState extends State<joinScreen> {
bool v = false;
final formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
             children: [
               SizedBox(height:10 ,),
               Center(child: Text('Join Us',style: TextStyle(fontSize:18,fontWeight:FontWeight.w900  ),)),
               SizedBox(height:22 ,),
               Center(child: Text('Create an account so you can stay up\n      to date with awesome recipes',style: TextStyle(fontSize:18,  ),)),
               Form(
                   key:formKey ,
                   child:
               Padding(
                 padding: const EdgeInsets.only(top:18,right: 35,left: 35 ),
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(bottom:8 ),
                       child: TextFormField(
                         validator:(value){
                           if(value!.isEmpty||value==null){
                            return 'Empty Field';

                           }


                         } ,
                         decoration:InputDecoration(
                             border:OutlineInputBorder(
                              borderSide:BorderSide(color:Color(0XFFE6E6E6) ),
                               borderRadius:BorderRadius.circular(5)
                             ),
                             hintText:'First and last name'
                         ) ,

                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 8,bottom: 8),
                       child: TextFormField(
                         validator:(value) {
                           if (value!.isEmpty || value == null) {
                             return 'Empty Field';
                           } else if (!value.contains('@')) {
                             return 'Email must contains @';
                           } else if (!value.contains('.com')) {
                              return 'Email must contains .com';

                           }
                         },
                         decoration:InputDecoration(
                             border:OutlineInputBorder(
                         borderSide:BorderSide(color:Color(0XFFE6E6E6) ),
                                 borderRadius:BorderRadius.circular(5)
                             ),
                             hintText:'Email address'
                         ) ,

                       ),
                     ),Padding(
                       padding: const EdgeInsets.only(top: 8,bottom: 8),
                       child: TextFormField(
                         validator:(value) {
                           if (value!.isEmpty || value == null) {
                             return 'Empty Field';
                           } else if (value.length<8||value.length>20) {
                             return 'Password must be (8 - 20 characthers)';
                           }
                         },
                         decoration:InputDecoration(
                             border:OutlineInputBorder(
                                 borderSide:BorderSide(color:Color(0XFFE6E6E6) ),
                                 borderRadius:BorderRadius.circular(5)
                             ),
                             hintText:'Password (8 - 20 characthers)'
                         ) ,

                       ),
                     ),Padding(
                       padding: const EdgeInsets.only(top: 8,bottom: 8),
                       child: TextFormField(
                         validator:(value) {
                           if (value!.isEmpty || value == null) {
                             return 'Empty Field';
                           } else if (value.length<11||value.length>11) {
                             return 'Mobile number must be 11 numbers ';
                           }
                         },
                         decoration:InputDecoration(
                             border:OutlineInputBorder(
                                 borderSide:BorderSide(color:Color(0XFFE6E6E6) ),
                                 borderRadius:BorderRadius.circular(5)
                             ),
                             hintText:'Mobile number (For delivery updates)'
                         ) ,

                       ),
                     ),
                     Row(
                       children: [
                         Checkbox(value:v, onChanged:(z){
                           setState(() {
                             v=z!;

                           });


                         }),
                          Text('By joining Savory you agree that you are over 18\n years of age or older, will receive email updates,\n promotions and special offers.',style:TextStyle(fontSize:13 ) ,)

                       ],

                     ),
                     SizedBox(height:36.83 ,),
                     ElevatedButton(onPressed:(){
                       formKey.currentState?.validate();
                       
                     },

                         child: Text('Join Us'),

                        style:ElevatedButton.styleFrom(
                          primary:Color(0xFFD53C25),
                          minimumSize:Size(344, 42)


                        ) ,
                     
                     ),
                   ],


                 ),
               )),
                SizedBox(height:50 ,),
                Center(child: Text('Continue with',style:TextStyle(fontSize:22 ) ,)),
               SizedBox(height:33 ,),
               socialMediaButton(image:'assets/images/instagram.png' ,text:'facebook' ,color:Colors.black ,),
               SizedBox(height:16 ,),
               socialMediaButton(image:'assets/images/facebook.png' ,text:'facebook' ,color:Color(0XFF4760A9) ,),
               SizedBox(height:16 ,),
               socialMediaButton(image:'assets/images/twitter .png' ,text:'facebook' ,color:Color(0XFF1DA1F2) ,),


             ],

               ),
        ),



        ),

    );
  }
}
