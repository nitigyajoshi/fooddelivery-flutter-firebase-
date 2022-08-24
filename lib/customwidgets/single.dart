import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooddelivery/customwidgets/counter.dart';

class Single extends StatefulWidget {
  final String title;
final String image;
 Single({required this.title,required this.image});

  @override
  State<Single> createState() => _SingleState();
}

class _SingleState extends State<Single> {
  @override
  Widget build(BuildContext context) {
    print('title home title');
    print(widget.image);
    return SingleChildScrollView(
scrollDirection: Axis.horizontal,
child: Row(
  children: [



  ],
),

    );
  }
}
/////////////////////////////////////////////////////////
///
class SingalProduct extends StatefulWidget {
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
      required this.productPrice
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
                        // Row(
                        //   children: [
                        //     Expanded(
                        //       child: ProductUnit(
                        //         onTap: () {
                        //           showModalBottomSheet(
                        //               context: context,
                        //               builder: (context) {
                        //                 return Column(
                        //                   mainAxisSize: MainAxisSize.min,
                        //                   crossAxisAlignment:
                        //                       CrossAxisAlignment.start,
                        //                   children: widget
                        //                       .productUnit.productUnit
                        //                       .map<Widget>((data) {
                        //                     return Column(
                        //                       children: [
                        //                         Padding(
                        //                           padding: const EdgeInsets
                        //                                   .symmetric(
                        //                               vertical: 10,
                        //                               horizontal: 10),
                        //                           child: InkWell(
                        //                             onTap: () async {
                        //                               setState(() {
                        //                                 unitData = data;
                        //                               });
                        //                               Navigator.of(context)
                        //                                   .pop();
                        //                             },
                        //                             child: Text(
                        //                               data,
                        //                               style: TextStyle(
                        //                                   color: primaryColor,
                        //                                   fontSize: 18),
                        //                             ),
                        //                           ),
                        //                         ),
                        //                       ],
                        //                     );
                        //                   }).toList(),
                        //                 );
                        //               });
                        //         },
                        //         title: unitData == null?firstValue:unitData,
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       width: 5,
                        //     ),
                        //     Count(
                        //       productId: widget.productId,
                        //       productImage: widget.productImage,
                        //       productName: widget.productName,
                        //       productPrice: widget.productPrice,
                        //       productUnit: unitData == null?firstValue:unitData,
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(height: 20,width: 65,child: Text('50gm'),), Counter()
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