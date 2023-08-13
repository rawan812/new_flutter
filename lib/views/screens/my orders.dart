import 'package:flutter/material.dart';
class myordersScreen extends StatelessWidget {
  const myordersScreen({Key? key}) : super(key: key);
static String id ='myorder';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0XFFf6f4eb) ,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                  children: [
                    Icon(Icons.arrow_back_ios,color:Color(0XFF4682A9) ,),
                    Icon(Icons.search,color:Color(0XFF4682A9)),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text('My Orders',style:TextStyle(fontWeight:FontWeight.w900,color:Color(0XFF4682A9),fontSize:30    ) ,),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Delivered',style:TextStyle(color:Color(0XFF4682A9),fontSize:19    ) ,),
                  Text('Processing',style:TextStyle(color:Color(0XFF4682A9),fontSize:19   ) ,),
                  Text('Cancelled',style:TextStyle(color:Color(0XFF4682A9),fontSize:19  ) ,),


                ],

              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Colors.white

                      ),
                      height:180,
                      child:Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                              children: [
                                Text('Order N:1947034',style:TextStyle(color:Color(0XFF4682A9),fontSize:19    ) ,),
                                Text('05-12-2019',style:TextStyle(color:Color(0XFF91C8E4),fontSize:19   ) ,),

                              ],

                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:16 ),
                            child: Row(
                              children: [
                                Text('Tracking number: ',style:TextStyle(color:Color(0XFF91C8E4),fontSize:17   ) ,),
                                Text(' IW34765437855',style:TextStyle(color:Color(0XFF4682A9),fontSize:17 ) ,),


                              ],


                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Text('Quantity: ',style:TextStyle(color:Color(0XFF91C8E4),fontSize:17    ) ,),
                                Text('3',style:TextStyle(color:Color(0XFF4682A9),fontSize:17    ) ,),
                                Spacer(),
                                Text('Total Amount:',style:TextStyle(color:Color(0XFF91C8E4),fontSize:17   ) ,),
                                Text(' 112\$',style:TextStyle(color:Color(0XFF4682A9),fontSize:17   ) ,),

                              ],

                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:16 ),
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                              children: [
                                InkWell(
                                  child: Container(

                                    child: Center(child: Text('Details',style:TextStyle(color:Color(0XFF4682A9),fontSize:17    ) ,)),
                                    height:40 ,
                                     width:95 ,
                                     decoration:BoxDecoration(border:Border.all(color:Color(0XFF4682A9), ) ,borderRadius:BorderRadius.circular(20)  ) ,
                                  ),
                                ),
                                Text('Delivered ',style:TextStyle(color:Color(0XFF749bc2),fontSize:17    ) ,),

                              ],

                            ),
                          ),


                        ],

                      ) ,



                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:16,bottom:16  ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:Colors.white

                        ),
                        height:180,
                        child:Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                children: [
                                  Text('Order N:1947034',style:TextStyle(color:Color(0XFF4682A9),fontSize:19    ) ,),
                                  Text('05-12-2019',style:TextStyle(color:Color(0XFF91C8E4),fontSize:19   ) ,),

                                ],

                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:16 ),
                              child: Row(
                                children: [
                                  Text('Tracking number: ',style:TextStyle(color:Color(0XFF91C8E4),fontSize:17   ) ,),
                                  Text(' IW34765437855',style:TextStyle(color:Color(0XFF4682A9),fontSize:17 ) ,),


                                ],


                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  Text('Quantity: ',style:TextStyle(color:Color(0XFF91C8E4),fontSize:17    ) ,),
                                  Text('3',style:TextStyle(color:Color(0XFF4682A9),fontSize:17    ) ,),
                                  Spacer(),
                                  Text('Total Amount:',style:TextStyle(color:Color(0XFF91C8E4),fontSize:17   ) ,),
                                  Text(' 112\$',style:TextStyle(color:Color(0XFF4682A9),fontSize:17   ) ,),

                                ],

                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:16 ),
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                children: [
                                  InkWell(
                                    child: Container(

                                      child: Center(child: Text('Details',style:TextStyle(color:Color(0XFF4682A9),fontSize:17    ) ,)),
                                      height:40 ,
                                      width:95 ,
                                      decoration:BoxDecoration(border:Border.all(color:Color(0XFF4682A9), ) ,borderRadius:BorderRadius.circular(20)  ) ,
                                    ),
                                  ),
                                  Text('Delivered ',style:TextStyle(color:Color(0XFF749bc2),fontSize:17    ) ,),

                                ],

                              ),
                            ),


                          ],

                        ) ,



                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Colors.white

                      ),
                      height:180,
                      child:Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                              children: [
                                Text('Order N:1947034',style:TextStyle(color:Color(0XFF4682A9),fontSize:19    ) ,),
                                Text('05-12-2019',style:TextStyle(color:Color(0XFF91C8E4),fontSize:19   ) ,),

                              ],

                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:16 ),
                            child: Row(
                              children: [
                                Text('Tracking number: ',style:TextStyle(color:Color(0XFF91C8E4),fontSize:17   ) ,),
                                Text(' IW34765437855',style:TextStyle(color:Color(0XFF4682A9),fontSize:17 ) ,),


                              ],


                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Text('Quantity: ',style:TextStyle(color:Color(0XFF91C8E4),fontSize:17    ) ,),
                                Text('3',style:TextStyle(color:Color(0XFF4682A9),fontSize:17    ) ,),
                                Spacer(),
                                Text('Total Amount:',style:TextStyle(color:Color(0XFF91C8E4),fontSize:17   ) ,),
                                Text(' 112\$',style:TextStyle(color:Color(0XFF4682A9),fontSize:17   ) ,),

                              ],

                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:16 ),
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                              children: [
                                InkWell(
                                  child: Container(

                                    child: Center(child: Text('Details',style:TextStyle(color:Color(0XFF4682A9),fontSize:17    ) ,)),
                                    height:40 ,
                                    width:95 ,
                                    decoration:BoxDecoration(border:Border.all(color:Color(0XFF4682A9), ) ,borderRadius:BorderRadius.circular(20)  ) ,
                                  ),
                                ),
                                Text('Delivered ',style:TextStyle(color:Color(0XFF749bc2),fontSize:17    ) ,),

                              ],

                            ),
                          ),


                        ],

                      ) ,



                    ),
                  ],
                ),
              ),
            ],

          ),
        ),
      ) ,

    );
  }
}
