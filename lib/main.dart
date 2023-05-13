// ignore_for_file: unused_import, prefer_const_constructors

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Place {
  final String name;
  final String description;
  final String image;

  Place({required this.name, required this.description, required this.image});
}

class MyApp extends StatelessWidget {
  final List<Place> places = [
    Place(
      name: 'Gateway of India',
      description:
          'The Gateway of India is a monument built during the 20th century in Mumbai, India.',
      image: 'lib/assets/Gate_of_India.jpg',
    ),
    Place(
      name: 'Marine Drive',
      description:
          'Marine Drive is a 3.6-kilometer-long boulevard in South Mumbai.',
      image: 'lib/assets/marine.jpg',
    ),
    Place(
      name: 'Elephanta Caves',
      description:
          'The Elephanta Caves are a network of sculpted caves located on Elephanta Island.',
      image: 'lib/assets/eleph.jpg',
    ),
    // Add more places as needed
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black, // Set background color to black
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Rare Earth',
            style: TextStyle(
              color: Color(0xffD1AA24),
              fontSize: 40,
              fontWeight: FontWeight.w900,
            ),
          ),

          backgroundColor: Color(0xff000000),
          centerTitle: true,
          elevation: 0, // Remove app bar shadow
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Colors.grey[900],
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 16.0), // Adjust the padding value as needed
              child: Row(
                children: [
                  Text(
                    "Mumbai",
                    style: TextStyle(
                      color: Color(0xffD1AA24),
                      fontWeight: FontWeight.w900,
                      fontSize: width / 9,
                    ),
                  ),
                  Icon(
                    Icons.location_city_sharp,
                    size: width / 8,
                    color: Color(0xffD1AA24),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(
                    top: 16), // Add space between app bar and body
                itemCount: places.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal:
                            16), // Add vertical space between title and subtitle
                    leading: Image.asset(
                      places[index].image,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      places[index].name,
                      style: TextStyle(
                          color: Color(0xffD1AA24)), // Set text color to yellow
                    ),
                    subtitle: Text(
                      places[index].description,
                      style: TextStyle(
                          color: Color(0xffffffff)), // Set text color to white
                    ),
                    onTap: () {
                      // Handle onTap event, e.g., navigate to a details screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              PlaceDetailsScreen(place: places[index]),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlaceDetailsScreen extends StatelessWidget {
  final Place place;

  PlaceDetailsScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
      ),
      body: Column(
        children: [
          Image.asset(
            place.image,
            width: double.infinity,
            height: 400, // Increase the height of the image
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 16,
          ), // Add vertical space between image and description
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              place.description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.yellow, // Set text color to yellow
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlaceDetailsScreen1 extends StatelessWidget {
  final Place place;

  PlaceDetailsScreen1({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
      ),
      body: Column(
        children: [
          Image.asset(
            place.image,
            width: double.infinity,
            height: 400, // Increase the height of the image
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 16,
          ), // Add vertical space between image and description
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              place.description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.yellow, // Set text color to yellow
              ),
            ),
          ),
        ],
      ),
    );
  }
}
