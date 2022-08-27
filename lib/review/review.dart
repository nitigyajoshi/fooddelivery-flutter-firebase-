import 'package:flutter/material.dart';
import 'package:fooddelivery/customwidgets/search_widget.dart';
import 'package:fooddelivery/model/review_cart_model.dart';
import 'package:fooddelivery/provider/review_cart_provider.dart';
import 'package:provider/provider.dart';

class ReviewCart extends StatelessWidget {
  ReviewCartProvider ?reviewCartProvider;
  showAlertDialog(BuildContext context, 
  ReviewCartModel delete
  ) {
    // set up the buttons
    Widget cancelButton = MaterialButton(
      child: Text("No"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = MaterialButton(
      child: Text("Yes"),
      onPressed: () {
        reviewCartProvider!.deleteReview(delete.cartId);
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Cart Product"),
      content: Text("Are you delete  cartProduct?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    reviewCartProvider = Provider.of<ReviewCartProvider>(context);
    reviewCartProvider!.getReviewCartData();
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text("Total Aount"),
        // subtitle: Text(
        //   "\$ ${reviewCartProvider.getTotalPrice()}",
        //   style: TextStyle(
        //     color: Colors.green[900],
        //   ),
        // ),
        trailing: Container(
          width: 160,
          child: MaterialButton(
            child: Text("Submit"),
            color: Colors.yellow,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                30,
              ),
            ),
            onPressed: () {
            //print('object');
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => DeliveryDetails(),
              //   ),
              // );
            },
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Review Cart",
          style: TextStyle(color: Colors.yellow, fontSize: 18),
        ),
      ),
      body: reviewCartProvider!.review_cart_provider.isEmpty
          ? Center(
              child: Text("NO DATA"),
            )
          : ListView.builder(
              itemCount: reviewCartProvider!.review_cart_provider.length,
              itemBuilder: (context, index) {
                ReviewCartModel data =
                    reviewCartProvider!.review_cart_provider[index];
                return Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    SearchItem(isbool: true, title: data.cartName, image: data.cartImage, price: data.cartPrice, id: data.cartId, quantity: data.cartQuantity,delete:(){
                      showAlertDialog(context,data);

                    },)
                      // isBool: true,
                      // wishList: false,
                      // productImage: data.cartImage,
                      // productName: data.cartName,
                      // productPrice: data.cartPrice,
                      // productId: data.cartId,
                      // productQuantity: data.cartQuantity,
                      // productUnit: data.cartUnit,
                      // onDelete: () {
                      //   showAlertDialog(context, data);
                      // },
                    
                  ],
                );
              },
            ),
    );
  }
}