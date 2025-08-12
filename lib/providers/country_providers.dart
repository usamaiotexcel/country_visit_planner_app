import 'package:country_visit_planner_app/services/country_services.dart';
import 'package:flutter/material.dart';
import '../models/country.dart';

class CountriesProvider with ChangeNotifier {
  final CountryService _service = CountryService();

  List<Country> _allCountries = [];
  int _itemsPerPage = 20;
  int _currentPage = 1;
  bool _isLoading = false;

  List<Country> get countries =>
      _allCountries.take(_itemsPerPage * _currentPage).toList();

  bool get isLoading => _isLoading;

  Future<void> fetchCountries() async {
    _isLoading = true;
    notifyListeners();

    _allCountries = await _service.fetchCountries();

    _isLoading = false;
    notifyListeners();
  }

  void loadMore() {
    if ((_itemsPerPage * _currentPage) < _allCountries.length) {
      _currentPage++;
      notifyListeners();
    }
  }
}
