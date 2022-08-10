import 'dart:convert';

import 'package:api_tutorial/factory_response/factory_response.dart';
import 'package:http/http.dart' as http;

Future<FactoryResponse> getNumberFact({required String number}) async {
  final response = await http.get(
    Uri.parse('http://numbersapi.com/$number?json'),
  );
  final bodyAsJason = jsonDecode(response.body) as Map<String, dynamic>;
  final data = FactoryResponse.fromJson(bodyAsJason);
  return data;
}
