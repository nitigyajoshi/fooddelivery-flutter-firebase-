import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:fooddelivery/model/product_model.dart';

class Wishlist with ChangeNotifier{
void addWishList(String ?wishListId,String ?wishListName,String ?wishListImage,int ?wishListPrice,int wishListQuantity, ) async{


await FirebaseFirestore.instance.collection("MyWishList").doc(FirebaseAuth.instance.currentUser!.uid).
collection("wishList").doc(wishListId).set({
"cartId":wishListId,
"cartImage":wishListImage,
"cartName": wishListName,
"cartPrice":wishListPrice,
"cartQuantity":wishListQuantity,
"wishList":true
});


}
List<ProductModel>wishList=[];
getWishList()async{
List<ProductModel>product_model=[];
QuerySnapshot value=await FirebaseFirestore.instance.collection("MyWishList").doc(FirebaseAuth.instance.currentUser!.uid).collection("wishList").get();
value.docs.forEach((element) { 
ProductModel productModel=ProductModel(productId: element.get("cartId"), 
product_Name: element.get("cartName"), product_image: element.get("cartImage"),
product_price: element.get("cartPrice"),

);
product_model.add(productModel);

});
 wishList=product_model;
 notifyListeners();

}

deleteWishList(wishListId){
FirebaseFirestore.instance.collection("MyWishList").doc(FirebaseAuth.instance.currentUser!.uid).collection("wishList").doc(wishListId).delete();
notifyListeners();
}


}