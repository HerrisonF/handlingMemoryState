import 'dart:convert';

import 'package:flutter_handling_memory/product_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Repository {
  Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  Future<List<Product>> getProduct() async {
    final Response response = await http.get(Uri.parse('https://run.mocky.io/v3/cf4139b8-b413-456a-94a2-d702ee13b242'),  headers: headers);
    final Map<String,dynamic> response2 = jsonDecode(response.body);
  final List<dynamic> decodedJson = response2['list'];

   List<Product> list = decodedJson.map(
        (dynamic json) {
          return Product.fromJson(json);
        }
    ).toList();

   print('Dando get no produto');
   // print(list[0].name);

   return list;
  }
}