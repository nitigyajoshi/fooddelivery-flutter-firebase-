import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class UserProvider with ChangeNotifier{

void addUser(String ?user_Name,String ?user_Image,String ?user_Email,User currentUser)async{
await FirebaseFirestore.instance.collection("userData").doc(currentUser.uid).set({
"user_Name":user_Name,
"user_Email":user_Email,
"user_Image":user_Image,
"userUid":currentUser.uid
});

}



}