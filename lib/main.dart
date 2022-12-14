import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/auth/signin.dart';
import 'package:fooddelivery/provider/product_provider.dart';
import 'package:fooddelivery/provider/review_cart_provider.dart';
import 'package:fooddelivery/provider/userProvider.dart';
import 'package:fooddelivery/screens/product_overview.dart';
import 'package:provider/provider.dart';

import 'provider/wishlist_provider.dart';

void main() async{

   WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   

    return MultiProvider(providers: [
ChangeNotifierProvider<ProductProvider>(create:(context)=>ProductProvider() ),
ChangeNotifierProvider(create: (context)=>UserProvider()),
ChangeNotifierProvider(create: (context)=>ReviewCartProvider()),
ChangeNotifierProvider(create: (context)=>Wishlist()),

    ],
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:
      //ProductOverview(productname: 'Fresh Basil', productimage: 'n')
       Signin(),
    ),);
  }
}

