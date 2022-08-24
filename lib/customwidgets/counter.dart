
import 'package:flutter/material.dart';


class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count=1;
  bool istrue=false;
  @override
  Widget build(BuildContext context) {
    return istrue==false? Row(children: [ 
    
    
       Icon(Icons.arrow_drop_down,color: Colors.green,size: 15,),
             // Text('50gm',style: TextStyle(color: Colors.green),),Icon(Icons.arrow_drop_down,color: Colors.green,size: 15,),
         
         InkWell(onTap: (){
           if(count==1){
              istrue=false;
          }
          if (count>1){
        setState(() {
        count--;
      });
    }
// setState(() {
//   //istrue=false;
//   count--;
// });

         },child: Icon(Icons.remove,color: Colors.green)
         ),

   Text('$count'),
   InkWell(onTap: (){
setState(() {
  //istrue=false;
  count++;
});

         },child: Icon(Icons.add,color: Colors.green)
         ),
 //  Icon(Icons.add,color: Colors.green)

  ]):Center(
    child: InkWell(
      onTap: (){
setState(() {
  istrue=true;
});
      },child: Text('Add'),
    ),
  );}
}