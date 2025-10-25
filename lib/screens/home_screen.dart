import 'package:flutter/material.dart';
import '../models/property_model.dart';
import '../widgets/property_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Property> properties = [
    Property(title: "Modern Apartment", price: 120000, location: "Mumbai"),
    Property(title: "Cozy Villa", price: 250000, location: "Hyderabad"),
    Property(title: "Luxury Flat", price: 180000, location: "Delhi"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Properties"),
        actions: [
          IconButton(icon: Icon(Icons.filter_alt), onPressed: () => Navigator.pushNamed(context, '/filters')),
          IconButton(icon: Icon(Icons.person), onPressed: () => Navigator.pushNamed(context, '/profile')),
        ],
      ),
      body: ListView.builder(
        itemCount: properties.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/details', arguments: properties[index]),
            child: PropertyCard(property: properties[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.map),
        onPressed: () => Navigator.pushNamed(context, '/map'),
      ),
    );
  }
}