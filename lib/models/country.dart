class Country {
  final String name;
  final String capital;
  final String continent;
  final String flagUrl;
  final double lat;
  final double lng;
  final int population;

  Country({
    required this.name,
    required this.capital,
    required this.continent,
    required this.flagUrl,
    required this.lat,
    required this.lng,
    required this.population,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name']?['common'] ?? '',
      capital:
          (json['capital'] != null &&
                  json['capital'] is List &&
                  json['capital'].isNotEmpty)
              ? json['capital'][0]
              : '',
      continent: json['region'] ?? '',
      flagUrl: json['flags']?['png'] ?? '',
      lat:
          json['latlng'] != null && (json['latlng'] as List).length >= 2
              ? (json['latlng'][0] as num).toDouble()
              : 0,
      lng:
          json['latlng'] != null && (json['latlng'] as List).length >= 2
              ? (json['latlng'][1] as num).toDouble()
              : 0,
      population: json['population'] ?? 0,
    );
  }
}
