import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: SeasonPage(),
  ),
);

class SeasonPage extends StatelessWidget {
  const SeasonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Season',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CountryPageCard(countryName: 'France'),
            CountryPageCard(countryName: 'Cambodia'),
          ],
        ),
      ),
    );
  }
}

class CountryPageCard extends StatefulWidget {
  final String countryName;

  const CountryPageCard({super.key, required this.countryName});

  @override
  State<CountryPageCard> createState() => _CountryPageCardState();
}

class _CountryPageCardState extends State<CountryPageCard> {
  int currentSeasonIndex = 0;

  List<String> seasonImages = [
    'https://images.pexels.com/photos/688660/pexels-photo-688660.jpeg', // winter
    'https://images.pexels.com/photos/414160/pexels-photo-414160.jpeg', // spring
    'https://images.pexels.com/photos/1486974/pexels-photo-1486974.jpeg', // summer
    'https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg', // fall
  ];

  void nextSeason() {
    setState(() {
      currentSeasonIndex = (currentSeasonIndex + 1) % seasonImages.length;
    });
  }

  @override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: nextSeason,
    child: Column(
      children: [
        Container(
          width: 150,
          height: 220,
          child: Image.network(
            seasonImages[currentSeasonIndex],
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          widget.countryName,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

}
