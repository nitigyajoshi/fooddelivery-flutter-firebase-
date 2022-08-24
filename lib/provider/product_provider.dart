import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import 'package:fooddelivery/model/product_model.dart';

class ProductProvider with ChangeNotifier{
List <ProductModel>herbsProduct=[];
List <ProductModel>search=[];

ProductModel ?productModel;
manageproduct(QueryDocumentSnapshot element)async{
 
productModel=ProductModel(
product_image:element.get("product_image"),
product_Name: element.get("product_Name"),
product_price: element.get("product_price")


);
search.add(productModel!);

}
fetchProductData()async{
  List<ProductModel>newList=[];

QuerySnapshot value=await FirebaseFirestore.instance.collection('fooddata').get();

value.docs.forEach((element) {
  
manageproduct(element);

newList.add(productModel!);


 });
herbsProduct=newList;
notifyListeners();


}
List<ProductModel>get getProductData{
  return herbsProduct;
}
//fresh fruit//////////////
List <ProductModel>fruitProduct=[];

fetchfruitData()async{
  List<ProductModel>neList=[];

QuerySnapshot value=await FirebaseFirestore.instance.collection('freshfruit').get();

value.docs.forEach((element) {
  
manageproduct(element);

neList.add(productModel!);


 });
fruitProduct=neList;
notifyListeners();


}
List<ProductModel>get getfruitData{
  return fruitProduct;
}
///search//
List<ProductModel>get searchData{
  return search;
}
}