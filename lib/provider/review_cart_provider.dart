import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:fooddelivery/model/review_cart_model.dart';

class ReviewCartProvider with ChangeNotifier{
  List<ReviewCartModel>review_cart_provider=[];

  void getReviewCartData()async{
List<ReviewCartModel>newList=[];
    QuerySnapshot reviewCartValue=await FirebaseFirestore.instance.collection("ReviewCart").doc(FirebaseAuth.instance.currentUser!.uid).collection("reviewCart").get();
reviewCartValue.docs.forEach((element) {
ReviewCartModel reviewCartModel=ReviewCartModel(cartName: element.get("cartName"), cartImage: element.get("cartImage"), cartId: element.get("cartId"));
newList.add(reviewCartModel);
 });
review_cart_provider=newList;
notifyListeners();
  }
void updateCart(String ?cartId,String ?cartName,String ?cartImage,int cartPrice,int cartQuantity,) async{

await FirebaseFirestore.instance.collection("ReviewCart").doc(FirebaseAuth.instance.currentUser!.uid).collection("reviewCart").doc(cartId).update({
"cartId":cartId,
"cartImage":cartImage,
"cartName":cartName,
"cartPrice":cartPrice,
"cartQuantity":cartQuantity,

});

}



void addUser(String ?cartId,String ?cartName,String ?cartImage,int cartPrice,int cartQuantity,bool isAdd) async{

await FirebaseFirestore.instance.collection("ReviewCart").doc(FirebaseAuth.instance.currentUser!.uid).collection("reviewCart").doc(cartId).set({
"cartId":cartId,
"cartImage":cartImage,
"cartName":cartName,
"cartPrice":cartPrice,
"cartQuantity":cartQuantity,
"isAdd":isAdd
});

}
List<ReviewCartModel>get getReviewData{
return review_cart_provider;
}
deleteReview(cartId){
FirebaseFirestore.instance.collection("ReviewCart").doc(FirebaseAuth.instance.currentUser!.uid).collection("reviewCart").doc(cartId).delete();
notifyListeners();
}
  
}