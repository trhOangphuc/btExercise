import 'package:flutter/material.dart';
import 'productBox.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter Demo', theme: ThemeData(
     primarySwatch: Colors.blue,
      ),
     home: const MyHome(title: 'Product layout demo home page'),
     debugShowCheckedModeBanner: false,
   );
  }
}

class MyHome extends StatelessWidget{
  const MyHome({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Listing")
      ),
      body: ListView(
        shrinkWrap: true, padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: const <Widget>[
          Productbox(name: 'Orange', description: 'Comment here', price: 100000, image: 'cam.png'),
          Productbox(name: 'Grape', description: 'Comment here', price: 300000, image: 'nho.png'),
          Productbox(name: 'Apple', description: 'Comment here', price: 200000, image: 'tao.png'),
          Productbox(name: 'Banana', description: 'Comment here', price: 150000, image: 'chuoi.png'),
          Productbox(name: 'Banana', description: 'Comment here', price: 150000, image: 'chuoi.png'),
          Productbox(name: 'Banana', description: 'Comment here', price: 150000, image: 'chuoi.png'),
        ],
      ),
    );
  }
}

