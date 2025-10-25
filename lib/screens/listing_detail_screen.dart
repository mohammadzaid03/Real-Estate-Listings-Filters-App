import 'package:flutter/material.dart';
import '../models/property_model.dart';

class ListingDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final property = ModalRoute.of(context)!.settings.arguments as Property?;

    return Scaffold(
      appBar: AppBar(title: Text(property?.title ?? "Details")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(property?.title ?? "", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("Location: \${property?.location ?? ''}"),
            Text("Price: ₹\${property?.price ?? ''}"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/contact'),
              child: Text("Contact Agent"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/schedule'),
              child: Text("Schedule Visit"),
            ),
          ],
        ),
      ),
    );
  }
}