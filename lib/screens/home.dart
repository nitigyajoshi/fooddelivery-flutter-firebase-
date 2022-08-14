
import 'package:flutter/material.dart';
import 'package:fooddelivery/customwidgets/drawer.dart';
import 'package:fooddelivery/customwidgets/items1.dart';
import 'package:fooddelivery/customwidgets/listtile.dart';
import 'package:fooddelivery/customwidgets/upperhomepage.dart';

class Home extends StatelessWidget {
      const Home({Key? key}) : super(key: key);

          @override
          Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(
        child: Draw(
          
        ),
    // child:Column(
    //   children: [


    //     Draw(
  
    //     )
      

    //   ],
    // ) ,
      ),

appBar: AppBar(iconTheme:IconThemeData(color: Colors.black),backgroundColor: Color(0xffd6b738),
  title: Text('Home',style: TextStyle(),),
  actions: [
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   CircleAvatar(radius: 12,
  
  backgroundColor: Color(0xFFFFD740),
  
    child: Icon(Icons.search),
  
  ),
),
Padding(

  padding: const EdgeInsets.symmetric(horizontal: 5),
  child:   CircleAvatar(radius: 13,
  backgroundColor: Color.fromARGB(255, 114, 209, 36),
    child: Icon(Icons.shop),
  
  ),
),
  ],
),

body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
  child: ListView(children: [Column(mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
      children: [
upperhome()
  
    
    ,SizedBox(height: 30,),
   ///////////////////////////////////////////////////////////
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
    item1(context),
    item1(context),
    item1(context)
      ]
    // Expanded(flex: 2,child: Image.network('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg')),
      ),
    ),
   SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.only(left:5),
        child: Text('Fresh fruits',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
    
SizedBox(height: 10,),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        item1(context),
        item1(context),
        item1(context)
      ],),
    )]
  ),],)
));
  }
}