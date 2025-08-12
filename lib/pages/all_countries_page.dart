import 'package:country_visit_planner_app/providers/country_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/country_card.dart';

class AllCountriesPage extends StatefulWidget {
  const AllCountriesPage({super.key});

  @override
  State<AllCountriesPage> createState() => _AllCountriesPageState();
}

class _AllCountriesPageState extends State<AllCountriesPage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CountriesProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Image.asset('assets/icons/HeaderLogo.png', width: MediaQuery.of(context).size.width, height: 50),
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      body:
          provider.isLoading
              ? const Center(child: CircularProgressIndicator())
              : NotificationListener<ScrollNotification>(
                onNotification: (scrollInfo) {
                  if (scrollInfo.metrics.pixels ==
                      scrollInfo.metrics.maxScrollExtent) {
                    provider.loadMore();
                  }
                  return false;
                },
                child: ListView.builder(
                  itemCount: provider.countries.length,
                  itemBuilder: (context, index) {
                    final country = provider.countries[index];
                    return CountryCard(country: country);
                  },
                ),
              ),
    );
  }
}
