import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aplikasi_eccomerce/models/product_model.dart';
import 'package:aplikasi_eccomerce/services/product_service.dart';


class ProductProvider with ChangeNotifier {
  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  set products(List<ProductModel> products) {
    _products = products;
    notifyListeners();
  }

  Future<void> getProudcts() async {
    try {
      List<ProductModel> products = await ProductService().getProducts();
      _products = products;
    } catch (e) {
      print(e);
    }
  }
}
