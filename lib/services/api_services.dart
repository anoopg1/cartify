import 'dart:convert';
import 'package:cartify/model/category_model/category_model.dart';
import 'package:cartify/model/product_model/product.dart';
import 'package:cartify/model/product_model/product_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  List<Product>? productList = [];
  List<Map<String, dynamic>> categories = [
    // ... your fetched data from the API
  ];

  Future<List<Product>?> fetchProducts() async {
    final response = await http.get(
      Uri.parse("https://dummyjson.com/products"),
    );
    final convertedData = jsonDecode(response.body);
    var res = ProductModel.fromJson(convertedData);
    var list = res.products;
    return list;
  }

  Future<List<CategoryModel>> fetchCategories() async {
    final url = Uri.parse('https://dummyjson.com/products/categories');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as List<dynamic>;
        final categories =
            data.map((item) => CategoryModel.fromJson(item)).toList();
        return categories;
      } else {
        throw Exception('Failed to fetch categories: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Error fetching categories: $error');
    }
  }
}
