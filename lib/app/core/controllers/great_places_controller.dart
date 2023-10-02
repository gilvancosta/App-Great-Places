import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';

import '../../data/db_util.dart';
import '../../domain/identities/place_identity.dart';

class GreatPlacesController with ChangeNotifier {
  List<PlaceIntinty> _items = [];

  Future<void> loadPlaces() async {
    final dataList = await DbUtil.getData('places');
    _items.clear();
    _items = dataList.map((item) {
      return PlaceIntinty(
        id: item['id'],
        title: item['title'],
        image: File(item['image']),
        location: null,
      );
    }).toList();

    notifyListeners();
  }

  List<PlaceIntinty> get items {
    return [..._items];
  }

  int get itemsCount {
    return _items.length;
  }

  PlaceIntinty itemByIndex(int index) {
    return _items[index];
  }

  void addPlace(String title, File image) {
    final newPlace = PlaceIntinty(
      id: Random().nextDouble().toString(),
      title: title,
      image: image,
      location: null,
    );

    _items.add(newPlace);
    DbUtil.insert('places', {
      'id': newPlace.id,
      'title': newPlace.title,
      'image': newPlace.image.path,
    });
    notifyListeners();
  }
}
