import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:order_fast_food/modules/models/product_models.dart';

class ProductDatabase {
  Stream<List<ProductModel>> readProduct() => FirebaseFirestore.instance
      .collection("product")
      .snapshots()
      .map((event) =>
          event.docs.map((e) => ProductModel.fromMap(e.data())).toList());
}
