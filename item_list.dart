// ignore: depend_on_referenced_packages
// ignore_for_file: non_constant_identifier_names

import 'package:cached_network_image/cached_Network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Models/product.dart';
// ignore: depend_on_referenced_packages
import 'package:project/models/product.dat';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class ItemListPage extends StatefulWidget {
  const ItemListPage({super.key})

  @override
  State<ItemListPage> createState() => _ItemListPageState();
}

class _ItmeListPageState extends State<ItemListPage> {
  final NumberFormat numberFormat = NumberFormat('###,###,###,###');}
  
 class Product {
 }
  @override          
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("제품 리스트"),
        centerTitle: true,
      ),
      body: GridView.builder(
         itemCount: productList.length,
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           childAspectRatio: 0.9,
           crossAxisCount: 2,
           // mainAxisExtent: 250,
         ), // sliverGridDelegateWithFixedCrossAxisCount
         itemBuilder: (context, index) {
          return productContainer(
              productName: productList[index].productName ?? "",
              productImageUrl: productList[index].productImageUrl ?? "",
              price: productList[index].price ?? 0);         
         },         
      ), // GridView.builder                    
    ); // Scaffold
  }
 Widget productContainer(
      {required String productName,
      required double price}) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          CachedNetworkImage(
            height: 150,
            fit: BoxFit.cover,
            placeholder: (context, url) {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ), // CircularProgressIndicator
              ); // Center
            },
            errorWidget: (context, url, error) {
              return const Center(
                child: Text("오류발생"),
              ); // Center
            },
          ), // CacheNetworkImage
          Container(
           padding: const EdgeInsets.all(8),
           child: Text("${numberFormat.format(price)}원"),
          ), // Container
        ],
      ), // Column
    ); // Container
   }