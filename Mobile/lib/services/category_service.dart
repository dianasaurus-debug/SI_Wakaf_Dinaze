import 'dart:convert';
import 'package:flutter_cash_waqf/services/base_service.dart';
import 'package:flutter_cash_waqf/utilities/constant.dart';
import 'package:http/http.dart' as http;

class CategoryService extends BaseService {
  final _url = "$urlApi/kategori";

  Future<dynamic> getAll() async {
    try {
      final _response = await http.get(
        Uri.parse("$_url/all"),
        headers: {
          "x-access-token": await getToken(),
        },
      );
      return jsonDecode(_response.body);
    } catch (e) {
      return e;
    }
  }
}
