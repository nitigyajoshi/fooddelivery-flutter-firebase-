

import 'package:flutter/material.dart';
import 'package:fooddelivery/customwidgets/search_widget.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    bottomNavigationBar: ListTile(
    title: Text('Total Amount'),
subtitle: Text('\$170',style: TextStyle(color: Colors.green),
),
trailing: Container(
  
  width: 160,
  child: MaterialButton(onPressed: (){

  },child: Text('Submit'),
  color: Colors.yellow,
  ),
  
),

    ),
    body: ListView(children: [
SizedBox(
height: 10,

),
SearchItem(isbool: true,title: 'Fruit',image: 'https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg',price: 40,)
,


    ],),
  );
  }
}