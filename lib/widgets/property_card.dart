import 'package:flutter/material.dart';
import '../models/property_model.dart';

class PropertyCard extends StatelessWidget {
  final Property property;
  PropertyCard({required this.property});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      child: ListTile(
        title: Text(property.title),
        subtitle: Text("\${property.location} • ₹\${property.price}"),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}