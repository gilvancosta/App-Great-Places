import 'package:flutter/material.dart';
import 'package:great_places/app/ui/place/place_page.dart';
import 'package:provider/provider.dart';
import 'core/controllers/great_places_controller.dart';
import 'ui/app_routes.dart';
import 'ui/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GreatPlacesController(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(title: 'Meus Lugares'),
        routes: {
          AppRoutes.placeForm: (ctx) => const PlaceFormScreen(),
        },
      ),
    );
  }
}
