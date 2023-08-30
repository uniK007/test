import 'package:flutter_application_test/models/product.dart';
import 'package:get/get.dart';

// Shopping controller
class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(const Duration(seconds: 1));
    var productResult = [
      Product(
          id: 1,
          productName: 'abd',
          productImage: 'dsj',
          productDescription: 'productDescription',
          price: 30),
      Product(
          id: 2,
          productName: 'Prod1',
          productImage: 'productImage1',
          productDescription: "productDescription1 ",
          price: 20),
      Product(
          id: 3,
          productName: 'productName',
          productImage: 'productImage',
          productDescription: 'productDescription',
          price: 40)
    ];

    products.value = productResult;
  }
}
