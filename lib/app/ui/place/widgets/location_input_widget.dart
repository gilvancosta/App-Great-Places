import 'package:flutter/material.dart';

class LocationInputWidget extends StatefulWidget {
  const LocationInputWidget({super.key});

  @override
  State<LocationInputWidget> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInputWidget> {
  String? _previewImageUrl;

  Future<void> _getCurrentUserLocation() async {
    // final locData = await Location().getLocation();
    // final staticMapImageUrl = LocationHelper.generateLocationPreviewImage(
    //   latitude: locData.latitude,
    //   longitude: locData.longitude,
    // );
    // setState(() {
    //   _previewImageUrl = staticMapImageUrl;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
          ),
          height: 170,
          width: double.infinity,
          child: _previewImageUrl == null
              ? const Text(
                  'Nenhuma localização informada!',
                  textAlign: TextAlign.center,
                )
              : Image.network(
                  _previewImageUrl!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.location_on),
              label: const Text('Localização atual'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.map),
              label: const Text('Selecione no mapa'),
            ),
          ],
        ),
      ],
    );
  }
}
