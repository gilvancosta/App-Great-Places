import 'package:flutter/material.dart';

import '../../domain/identities/place_identity.dart';


class GreatPlaces with ChangeNotifier {
  final List<PlaceIntinty> _items = [];

  List<PlaceIntinty> get items {
    return [..._items];
  }

  int get itemsCount {
    return _items.length;
  }

  PlaceIntinty itemByIndex(int index) {
    return _items[index];
  }
}
