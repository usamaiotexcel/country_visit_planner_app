import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/country.dart';

class CountryService {
  Future<List<Country>> fetchCountries() async {
    final url = Uri.parse("https://restcountries.com/v3.1/all?fields=name,flags,capital,region,population,latlng");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Country.fromJson(json)).toList();

    } else {
      throw Exception('Failed to load countries');
      
    }
  }
}
