import 'package:flutter/material.dart';
import 'package:fooddelivery/customwidgets/listtile.dart';

import '../customwidgets/bottomnav.dart';
enum SigninCharacter{fill,outline}


class ProductOverview extends StatefulWidget {
  final String productname;
  final String productimage;
  ProductOverview({required this.productname,required this.productimage}) ;

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
var price=30;
SigninCharacter _character=SigninCharacter.fill;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(appBar: AppBar(backgroundColor: Colors.amber,title: Text('Product Overview',style: TextStyle(),),),
bottomNavigationBar: Row(children: [
bottom(
backgroundColor:Colors.white,
iconcolor:Colors.grey,
title:"Add to wishlist",
icondata:Icons.favorite_outlined, 
color: Colors.black,
),
bottom(
backgroundColor:Colors.yellow,
iconcolor:Colors.grey,
title:"Go to cart",
icondata:Icons.shop,
color: Colors.black,
),
]),
      body: SafeArea(
        child: Column(children:[
          Container(height: 300,
            child: Expanded(flex: 2,child: Container(
              
            //  color: Colors.amber,
           // height: 250,
            width: double.infinity,
            child: Column(children: [
            
            ListTile(title: Text('Fresh Basil',style: TextStyle(fontWeight: FontWeight.bold),),
            
            subtitle: Text('\$40'),)
            ,
             Container(
              height: 200,
              //color: Colors.red
             decoration: BoxDecoration(
             
image: DecorationImage(fit: BoxFit.contain,image:NetworkImage('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg') )

             ),

        //height: 200,padding: EdgeInsets.all(20),
       // child: Image.network('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg',height: 200,),
            ),
            
            ],
            
 
            ),
            
            
            )),
          )
          ,
          Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        child: Text('Available option',textAlign: TextAlign.start,
        style: TextStyle(
      
        fontWeight: FontWeight.w600
        ),
        
        ),
          )
          ,
          Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child:   Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
          Row(children: [
          CircleAvatar(
          radius: 3,
          backgroundColor: Colors.green[700],
          
          ),
          Radio(
        value: SigninCharacter.fill, groupValue:_character , 
        activeColor: Colors.green[700],
        onChanged:(value){
          setState(() {
        
          //_character=value
          });
        })
          ,Text('\$50')
          ,
          Container(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          decoration: BoxDecoration(
          border: Border.all(
          
        color: Colors.grey
        ,
          ),
          
          borderRadius: BorderRadius.circular(2)
          ),
          child: Row(children: [
          Icon(Icons.add,
          size: 17,
          color:Colors.grey,
          )
          ,Text('Add',style: TextStyle(
        color: Colors.amberAccent
          ),)
          ],),
          )
          ],)
          
          
        ],),
          ),
          SizedBox(height:25,)
          ,Row(mainAxisAlignment:MainAxisAlignment.start ,
            children: [
              Text('Product Overview',style: TextStyle(fontSize: 15,
        fontWeight: FontWeight.bold
              ),),
            ],
          ),
SizedBox(height: 12,)
,
          Text('Fruit crops represent a wide range of woody perennial species cultivated in orchards where soils vary greatly in their biological, chemical, and physical ...',style: TextStyle(
       
          ),)
        ]
          
        ),
      ),
    );
  }
}


