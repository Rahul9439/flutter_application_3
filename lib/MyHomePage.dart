// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/Api/StatusApi.dart';
import 'package:flutter_application_3/model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  StatusApi ?categories;
  int ?data1;
  @override
  void initState() {
    super.initState();
    getStatus();
  }
   getStatus() async{
   categories = await Model().getStatusApi();
   if(categories!=null){
     setState(() {
       data1 = categories!.ordersCount.length ;
       print(data1);
     }); 
   }
  }
  @override
  Widget build(BuildContext context) {
   double height = MediaQuery.of(context).size.height;
    return Scaffold(
     body: Column(
       children: [
         if(categories!=null)
         Stack(
           //fit: StackFit.loose,
           children: [ Container(
             padding: const EdgeInsets.only(top: 50,left: 20,),
             height: height/4,
             width: double.infinity,          
             decoration: const BoxDecoration(color: Colors.red,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),)),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(right: 30),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: const [
                       Text("Restropress",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
                       Padding(
                         padding: EdgeInsets.only(top:25),
                         child: Icon(Icons.settings,color: Colors.white,size: 30,),
                       )
                     ],
                   ),
                 ),
                 Row(
                   children: const[
                     Icon(Icons.calendar_month_outlined,color: Colors.white),
                     Text("  13 Apr 2022 - 11 May 2022",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.white),),
                   ],
                 )
               ],
             ),
           ),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 SizedBox(width: 6,),
                 Container(
                   margin: const EdgeInsets.only(top: 160,),    
                 height: 75,
                 width: 180,
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Container(
                       height: 45,
                       width: 45,
                      decoration: BoxDecoration(color: Color.fromARGB(255, 224, 241, 255),borderRadius: BorderRadius.circular(8)),
                       child: const Icon(Icons.currency_rupee)),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(height: 20,),
                         Text("Paid Orders",style: TextStyle(fontWeight: FontWeight.bold),),
                         Text(categories!.paymentsCount.publish)
                       ],
                     ),
                   ],
                 ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   margin: const EdgeInsets.only(top: 160,),    
                 height: 75,
                 width: 240,
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Container(
                       height: 45,
                       width: 45,
                      decoration: BoxDecoration(color: Color.fromARGB(255, 224, 255, 228),borderRadius: BorderRadius.circular(8)),
                       child: const Icon(Icons.currency_rupee)),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(height: 20,),
                         Text("Payments Processing",style: TextStyle(fontWeight: FontWeight.bold),),
                         Text(categories!.paymentsCount.processing)
                       ],
                     ),
                   ],
                 ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   margin: const EdgeInsets.only(top: 160,),    
                 height: 75,
                 width: 180,
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Container(
                       height: 45,
                       width: 45,
                      decoration: BoxDecoration(color: Color.fromARGB(255, 255, 224, 251),borderRadius: BorderRadius.circular(8)),
                       child: const Icon(Icons.currency_rupee)),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(height: 20,),
                         Text("Completed Orders",style: TextStyle(fontWeight: FontWeight.bold),),
                         Text(categories!.paymentsCount.autoDraft.toString())
                       ],
                     ),
                   ],
                 ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   margin: const EdgeInsets.only(top: 160,),    
                 height: 75,
                 width: 180,
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Container(
                       height: 45,
                       width: 45,
                      decoration: BoxDecoration(color: Color.fromARGB(255, 224, 255, 252),borderRadius: BorderRadius.circular(8)),
                       child: const Icon(Icons.currency_rupee)),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(height: 20,),
                         Text("Cancel Orders",style: TextStyle(fontWeight: FontWeight.bold),),
                         Text(categories!.paymentsCount.abandoned.toString())
                       ],
                     ),
                   ],
                 ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   margin: const EdgeInsets.only(top: 160,),    
                 height: 75,
                 width: 180,
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Container(
                       height: 45,
                       width: 45,
                      decoration: BoxDecoration(color: Color.fromARGB(255, 255, 253, 224),borderRadius: BorderRadius.circular(8)),
                       child: const Icon(Icons.currency_rupee)),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(height: 20,),
                         Text("Pending Orders",style: TextStyle(fontWeight: FontWeight.bold),),
                         Text(categories!.paymentsCount.pending)
                       ],
                     ),
                   ],
                 ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   margin: const EdgeInsets.only(top: 160,),    
                 height: 75,
                 width: 180,
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Container(
                       height: 45,
                       width: 45,
                      decoration: BoxDecoration(color: Color.fromARGB(255, 255, 224, 239),borderRadius: BorderRadius.circular(8)),
                       child: const Icon(Icons.currency_rupee)),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(height: 20,),
                         Text("All Orders",style: TextStyle(fontWeight: FontWeight.bold),),
                         Text(categories!.paymentsCount.active.toString())
                       ],
                     ),
                   ],
                 ),
                 ),
               ],
             ),
           ),
           ]
         ),
         Padding(
           padding: const EdgeInsets.all(25),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("All Orders",style: TextStyle(fontWeight: FontWeight.bold),),
                 Row(
                   children: [
                     Text("Filter",style: TextStyle(fontWeight: FontWeight.w500),),
                     Icon(Icons.filter_alt_rounded,color: Colors.red,)
                   ],
                 )
               ],
             ),
         ),
         SizedBox(
           height: 490,
           child: SingleChildScrollView(
             child: Column(
               children: [
                 SizedBox(
                   height: 220,
                   child: Card(
                     elevation: 10,
                     child: Padding(
                       padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           const Text("Order #1903",style: TextStyle(fontWeight: FontWeight.bold),),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               const Text("May, 11 2022 3:00 PM"),
                               Container(
                                   height: 45,
                                   width: 45,
                                  decoration: BoxDecoration(color: Color.fromARGB(255, 224, 241, 255),borderRadius: BorderRadius.circular(8)),
                                   child: const Icon(Icons.print_outlined)),
                             ],
                           ),
                           const Divider(color: Colors.black26,),                
                           Row(
                             children: [
                              const Icon(Icons.person),
                              const Text("test order",style: TextStyle(fontWeight: FontWeight.bold)),
                             ],
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                              const Text("Pending"),
                               Column(
                                 children: [
                                   Text("\$ 44.53",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange[900],fontSize: 20)),
                                   Container(
                                     height: 21,
                                     width: 85,
                                     decoration: BoxDecoration(color: Colors.orange[400],borderRadius: BorderRadius.circular(5)),
                                     child:const Center(child: Text("Processing",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,))),
                                   )
                                 ],
                               )
                             ],
                           ),
                           Row(
                                   children: [
                                     Icon(Icons.pedal_bike),
                                     Text("  Delivery"),
                                     VerticalDivider(color: Colors.black12,),
                                     Icon(Icons.calendar_month),
                                     Text("  May 11,2022 | 10:30")
                                   ],
                                 )
                         ],
                       ),
                     ),
                   ),
                 ),
                 SizedBox(height: 10,),
                 SizedBox(
                   height: 220,
                   child: Card(
                     elevation: 10,
                     child: Padding(
                       padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           const Text("Order #1903",style: TextStyle(fontWeight: FontWeight.bold),),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               const Text("May, 11 2022 3:00 PM"),
                               Container(
                                   height: 45,
                                   width: 45,
                                  decoration: BoxDecoration(color: Color.fromARGB(255, 224, 241, 255),borderRadius: BorderRadius.circular(8)),
                                   child: const Icon(Icons.print_outlined)),
                             ],
                           ),
                           const Divider(color: Colors.black26,),                
                           Row(
                             children: [
                              const Icon(Icons.person),
                              const Text("test order",style: TextStyle(fontWeight: FontWeight.bold)),
                             ],
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                              const Text("Pending"),
                               Column(
                                 children: [
                                   Text("\$ 35.64",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange[900],fontSize: 20)),
                                   Container(
                                     height: 21,
                                     width: 85,
                                     decoration: BoxDecoration(color: Colors.orange[400],borderRadius: BorderRadius.circular(5)),
                                     child:const Center(child: Text("Processing",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,))),
                                   )
                                 ],
                               )
                             ],
                           ),
                           Row(
                                   children: [
                                     Icon(Icons.pedal_bike),
                                     Text("  Delivery"),
                                     VerticalDivider(color: Colors.black12,),
                                     Icon(Icons.calendar_month),
                                     Text("  May 11,2022 | 10:30")
                                   ],
                                 )
                         ],
                       ),
                     ),
                   ),
                 ),
                 SizedBox(height: 10,),
                 SizedBox(
                   height: 220,
                   child: Card(
                     elevation: 10,
                     child: Padding(
                       padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           const Text("Order #1903",style: TextStyle(fontWeight: FontWeight.bold),),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               const Text("May, 11 2022 3:00 PM"),
                               Container(
                                   height: 45,
                                   width: 45,
                                  decoration: BoxDecoration(color: Color.fromARGB(255, 224, 241, 255),borderRadius: BorderRadius.circular(8)),
                                   child: const Icon(Icons.print_outlined)),
                             ],
                           ),
                           const Divider(color: Colors.black26,),                
                           Row(
                             children: [
                              const Icon(Icons.person),
                              const Text("test order",style: TextStyle(fontWeight: FontWeight.bold)),
                             ],
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                              const Text("Pending"),
                               Column(
                                 children: [
                                   Text("\$ 873.87",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange[900],fontSize: 20)),
                                   Container(
                                     height: 21,
                                     width: 85,
                                     decoration: BoxDecoration(color: Colors.orange[400],borderRadius: BorderRadius.circular(5)),
                                     child:const Center(child: Text("Processing",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,))),
                                   )
                                 ],
                               )
                             ],
                           ),
                           Row(
                                   children: [
                                     Icon(Icons.pedal_bike),
                                     Text("  Delivery"),
                                     VerticalDivider(color: Colors.black12,),
                                     Icon(Icons.calendar_month),
                                     Text("  May 11,2022 | 10:30")
                                   ],
                                 )
                         ],
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
           
         
         
       ],
     ), 
    );
  }
}