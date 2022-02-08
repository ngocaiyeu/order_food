import 'dart:async';

import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:order_fast_food/modules/models/product_models.dart';
import 'package:order_fast_food/modules/service/product.dart';

class ProductController extends GetxController {
  // final Rx<ProductModel> _productModel = ProductModel().obs;
  // ProductModel get product => _productModel.value;

  // set product(ProductModel value) => _productModel.value = value;

  // void clean() {
  //   _productModel.value = ProductModel();
  // }

  // FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  RxList<ProductModel> productModelList = RxList<ProductModel>([]);
  // ignore: invalid_use_of_protected_member
  List<ProductModel> get listProduct => productModelList.value;
  // late CollectionReference productCollectionReference;

  // @override
  // void onInit() {
  //   super.onInit();
  //   var s = ProductDatabase().lista();
  //   print(s);
  //   // productCollectionReference = firebaseFirestore.collection("product");
  //   // productModelList.bindStream(getAllProduct());
  // }


  // Stream<List<ProductModel>> getAllProduct() =>
  //     productCollectionReference.snapshots().map((query) =>
  //         query.docs.map((item) => ProductModel.fromMap(item)).toList());
}
