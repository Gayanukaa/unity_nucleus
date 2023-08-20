import 'package:flutter/material.dart';
import '../src/back_button.dart';
import '../src/result_list_tile.dart';

class SearchResultsPage extends StatefulWidget {
  const SearchResultsPage({super.key});

  @override
  State<SearchResultsPage> createState() => _SearchResultsPageState();
}

class _SearchResultsPageState extends State<SearchResultsPage> {
  // Mock search results data
  final List<Map<String, String>> searchResults = [
    {
      //dummy images applied
      'departureImage': 'assets/images/earth.png',
      //assets/images/earth.png
      'destinationImage': 'assets/images/earth.png',
      //assets/destination_planet_1.png
      'transitInfo': 'Transit A',
      'departurePlanetName': 'Planet A',
      'destinationPlanetName': 'Planet B',
    },
    {
      'departureImage': 'assets/images/earth.png',
      'destinationImage': 'assets/images/earth.png',
      'transitInfo': 'Transit B',
      'departurePlanetName': 'Planet A',
      'destinationPlanetName': 'Planet B',
    },
    // Add more search result items...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(7, 7, 15, 1),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: CustomBackButton(
                title: '  <  ',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  child: SearchResultItem(
                    departureImage: searchResults[index]['departureImage']!,
                    destinationImage: searchResults[index]['destinationImage']!,
                    transitInfo: searchResults[index]['transitInfo']!,
                    departurePlanetName: searchResults[index]
                        ['departurePlanetName']!,
                    destinationPlanetName: searchResults[index]
                        ['destinationPlanetName']!,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


