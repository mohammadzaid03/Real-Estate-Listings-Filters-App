import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';
import 'screens/listing_detail_screen.dart';
import 'screens/filters_screen.dart';
import 'screens/map_screen.dart';
import 'screens/contact_agent_screen.dart';
import 'screens/favorites_screen.dart';
import 'screens/schedule_visit_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(RealEstateApp());
}

class RealEstateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/home': (context) => HomeScreen(),
        '/details': (context) => ListingDetailScreen(),
        '/filters': (context) => FiltersScreen(),
        '/map': (context) => MapScreen(),
        '/contact': (context) => ContactAgentScreen(),
        '/favorites': (context) => FavoritesScreen(),
        '/schedule': (context) => ScheduleVisitScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}