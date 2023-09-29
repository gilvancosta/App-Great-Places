import 'dart:io';

class PlaceLocationIntinty {
  final double latitude;
  final double longitude;
  final String? address;

  PlaceLocationIntinty({
    required this.latitude,
    required this.longitude,
    this.address,
  });
}

class PlaceIntinty {
  final String id;
  final String title;
  final PlaceLocationIntinty location;
  final File image;

  PlaceIntinty({
    required this.id,
    required this.title,
    required this.location,
    required this.image,
  });
}
