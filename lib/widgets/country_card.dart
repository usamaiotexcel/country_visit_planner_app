import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/country.dart';

class CountryCard extends StatelessWidget {
  final Country country;
  const CountryCard({required this.country, super.key});

  @override
  Widget build(BuildContext context) {
      TextStyle lableStyle = GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    
    );
    return Container(
      margin: const EdgeInsets.all(12.0),
      child: Card(
        elevation: 10,
        color: Colors.grey.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(country.flagUrl,fit: BoxFit.cover,width: MediaQuery.of(context).size.width,),
            //  CachedNetworkImage(
            //   imageUrl: country.flagUrl,
            //   width: MediaQuery.of(context).size.width ,
            //   // placeholder: (context, url) => const CircularProgressIndicator(),
            //   errorWidget: (context, url, error) => const Icon(Icons.error),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                         
              Expanded(child: Text(country.name, style: lableStyle,textAlign: TextAlign.center,)),
              Expanded(child: Text("${country.capital} • ${country.continent}",style: lableStyle, overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ))
            ],),
          ],
        ),
      
      
        ),
    );
    // );
  }
}
