import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooddelivery/customwidgets/counter.dart';


/////////////////////////////////////////////////////////
///
class SingalProduct extends StatefulWidget {
  final String productId;
  final String productImage;
  final String productName;
   final int productPrice;
   final VoidCallback ?onTap;
  // final String productId;
 
  SingalProduct(
      {
        //this.productId,
      required this.productImage,
      required this.productName,

   this.onTap,
      required this.productPrice,required this.productId
      //});
      });
  @override
  _SingalProductState createState() => _SingalProductState();
}

class _SingalProductState extends State<SingalProduct> {
  var unitData;
  var firstValue;
  @override
  Widget build(BuildContext context) {
    // widget.productUnit.productUnit.firstWhere((element) {
    //   setState(() {
    //     firstValue = element;
    //   });
    //   return true;
    // });
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
     
          Container(
            margin: EdgeInsets.only(right: 10),
            height: 230,
            width: 165,
            decoration: BoxDecoration(
              color: Color(0xffd9dad9),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: widget.onTap,
                  child: Container(
                    height: 150,
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    child: Image.network(
                      widget.productImage,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.productName,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('${widget.productPrice}\$')
                        // Text(
                        //   '${widget.productPrice}\$/${unitData == null?firstValue:unitData}',
                        //   style: TextStyle(
                        //     color: Colors.grey,
                        //   ),
                        // ),
                       , SizedBox(
                          height: 5,
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(height: 20,width: 65,child: Text('50gm'),),
                    
                     Counter(productId: widget.productId,
                     productimage: widget.productImage,
                     productName: widget.productName,
                     productPrice: widget.productPrice,
                     productQuantity: 1,
                     
                     )
                  ],
                ),
               

            //     Row(children: [
            //       Container(
            //         height: 20,width: 65,child: Row(children: [Text('50gm'),
            //       // Counter()
            //       ]
            //       ,
            //       )
            //   ],
            // ),
       
       
       
       
        ])),
        ],
      ),
    );
  }
}