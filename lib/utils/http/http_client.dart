import 'dart:convert';
import 'package:http/http.dart' as http;

class THttpHelper{

  static const String _baseURL = 'www. your api url here.com';

// Helper method to make a GET request.
  static Future<Map<String, dynamic>> get (String endpoint) async {
    final response = await http.get(Uri.parse('$_baseURL/$endpoint'));
    return _handleResponse (response);
  }

// Helper methode to make a POST request
  static Future<Map<String, dynamic>> post (String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseURL/$endpoint'),
      headers: {'Content-Type' : 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse (response);
  }

//Helper method to make a PUT request
  static Future<Map<String, dynamic>> put (String endpoint, dynamic data) async{
    final response = await http.put(
      Uri.parse('$_baseURL/$endpoint'),
      headers: {'Content-Type' : 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse (response);
  }

//Helper methode to make a DELETE request.
  static Future<Map<String, dynamic>> delete  (String endpoint) async{
    final response = await http.delete(Uri.parse('$_baseURL/$endpoint'));
    return _handleResponse (response);
  }

//Handle the HTTP response
  static Map<String, dynamic> _handleResponse(http.Response response){
    if(response.statusCode == 200 ){
      return json.decode(response.body);
    }else{
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}