import 'package:country_visit_planner_app/pages/all_countries_page.dart';
import 'package:country_visit_planner_app/providers/country_providers.dart';
import 'package:country_visit_planner_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  print("Starting Country Visit Planner App...");
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      
      providers: [
        ChangeNotifierProvider(create: (_) => CountriesProvider()..fetchCountries()),
      ],
      child: MaterialApp(
        title: 'Country Visit Planner',
      theme: ThemeData(
          primarySwatch: Colors.green,
          // primaryColor: Color(0xFF4caf50),
          primaryColor: Colors.white,
          secondaryHeaderColor: Color(0xFF5eb67e),
          // buttonColor: Color(0xFF4caf50),
          primaryColorDark: const Color(0xFF087f23),
          scaffoldBackgroundColor: Colors.white,
          hintColor: const Color(0xFF343A40),
          appBarTheme: AppBarTheme(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            titleTextStyle: TextStyle(color: Colors.black),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xFF4caf50), // foreground (text) color
            ),
          ),
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Colors.green,
            selectionHandleColor: Theme.of(context).primaryColor,
          ),
          textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          ),
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
            ),
          ),
          colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.green),
        ),
        debugShowCheckedModeBanner: false,
        
        home: const SplashScreen(),
      ),
    );
  }
}
